package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditBookDetailServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		boolean flag=false;
		
		//retreiving form parameters
		String code=req.getParameter("code");
		String bkname=req.getParameter("bkname");
		String catcode=req.getParameter("catcode");
		String lang=req.getParameter("lang");
		String price=req.getParameter("price");
		String author=req.getParameter("author");
		String publ=req.getParameter("publ");
		String tax=req.getParameter("tax");
		String idisc=req.getParameter("idisc");
		String cdisc=req.getParameter("cdisc");
		String bdesc=req.getParameter("bdesc");
		String status=req.getParameter("bstatus");
		
		//converting string to int and float respectively
		int bcode=Integer.parseInt(code);
		int cat_code=Integer.parseInt(catcode);
		float bprice=Float.parseFloat(price);
		float btax=Float.parseFloat(tax);
		int bidisc=Integer.parseInt(idisc);
		int bcdisc=Integer.parseInt(cdisc);
		
		System.out.println("********Retrieved request parameters******");
		System.out.println("bcode:" +bcode);
		System.out.println("bkname:" +bkname);
		System.out.println("catcode:" +cat_code);
		System.out.println("lang:" +lang);
		System.out.println("price:" +bprice);
		System.out.println("author:" +author );
		System.out.println("publ:" +publ);
		System.out.println("tax:" +btax);
		System.out.println("idisc:" +bidisc);
		System.out.println("cdisc:" +bcdisc);
		System.out.println("cdisc:" +bdesc);
		System.out.println("status:" +status);
		
		flag=AdminDao.editBookDetail(bcode,bkname, cat_code, lang, bprice, author, publ, btax, bidisc, bcdisc,bdesc, status);
		
		if(flag)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/viewBookDetails.jsp");
			req.setAttribute("message1","Book detail updated successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			String path=req.getContextPath();
			resp.sendRedirect(path+"/jsp/editBookDetail.jsp");
		}
	}
}
