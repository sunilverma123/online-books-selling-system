package com.Admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddBookDetailServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		boolean flag=false;
		ResultSet rs=null;
		int cat_code=0;
		
		//retreiving form parameters
		String bk_name=req.getParameter("bkname");
		String bk_category=req.getParameter("category");
		String lang=req.getParameter("lang");
		String price=req.getParameter("price");
		String author=req.getParameter("author");
		String publ=req.getParameter("publ");
		String tax=req.getParameter("tax");
		String bdesc=req.getParameter("bdesc");//book desc
		String idisc=req.getParameter("idisc");
		String cdisc=req.getParameter("cdisc");
		String status=req.getParameter("status");
		
	
		System.out.println("***********retrieved form parameters from addBookDetails jsp page***********");
		System.out.println("bk_name:" +bk_name);
		System.out.println("bk_category:" +bk_category);
		System.out.println("lang:" +lang);
		System.out.println("price:" +price);
		System.out.println("author:" +author);
		System.out.println("publ:" +publ);
		System.out.println("tax:" +tax);
		System.out.println("idisc:" +idisc);
		System.out.println("cdisc:" +cdisc);
		System.out.println("bdesc:" +bdesc);
		System.out.println("status:" +status);
		
		//retrieving cat_code for the corresponding category name
		cat_code=AdminDao.getCatCode(bk_category);
		System.out.println("++++++catcode value from AddBookDetailservlet:" +cat_code);
		
		//converting String values to int and float respectively
		float bk_price=Float.parseFloat(price);
		float bk_tax=Float.parseFloat(tax);
		int bk_idisc=Integer.parseInt(idisc);
		int bk_cdisc=Integer.parseInt(cdisc);
		
		
		//Persisting the retrieved values into database
		flag=AdminDao.addBookDetail(bk_name, cat_code, lang, bk_price, author, publ, bk_tax, bk_idisc, bk_cdisc,bdesc, status);
		
		if(flag)
		{
			
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
			req.setAttribute("bkdetMessage","book detail added successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			String path=req.getContextPath();
			resp.sendRedirect(path+"/jsp/addBookDetails.jsp");
		}
		
	}
}
