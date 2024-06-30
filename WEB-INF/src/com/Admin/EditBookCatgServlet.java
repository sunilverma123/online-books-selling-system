package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditBookCatgServlet extends HttpServlet
{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
		{
			
			System.out.println("++++++++++++EditBookCatgServlet++++++++++++++++++++");
			resp.setContentType("text/html");
			boolean flag=false;
			System.out.println("inside of servlet");
			//retreiving form parameters
			String code=req.getParameter("catcode");
			int cat_code=Integer.parseInt(code);
			String cat_name=req.getParameter("catname");
			String desc=req.getParameter("desc");
			
			System.out.println("------------retreived values from editBookCatg jsp page-------------");
			System.out.println("cat_code:" +cat_code);
			System.out.println("cat_name:" +cat_name);
			System.out.println("description:" +desc);
			
			flag=AdminDao.editBookCatg(cat_code, cat_name, desc);
			
			if(flag)
			{
				RequestDispatcher rd=null;
				rd=req.getRequestDispatcher("/jsp/viewBookCatg.jsp");
				req.setAttribute("message1","Book Category updated successfully");
				rd.forward(req,resp);
				
			}
			
			else
			{
				String path=req.getContextPath();
				resp.sendRedirect(path+"/jsp/editBookCatg.jsp");
			}
		}

}
