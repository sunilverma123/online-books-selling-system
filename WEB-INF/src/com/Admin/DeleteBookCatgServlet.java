package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteBookCatgServlet extends HttpServlet
{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
		{
			resp.setContentType("text/html");
			boolean flag=false;
			
			//retreiving form parameters
			String code=req.getParameter("code1");
			int cat_code=Integer.parseInt(code);
			System.out.println("------------retreived values from viewBookCatg jsp page-------------");
			System.out.println("cat_code:" +cat_code);
			
			flag=AdminDao.deleteBookCatg(cat_code);
			
			if(flag)
			{
				RequestDispatcher rd=null;
				rd=req.getRequestDispatcher("/jsp/viewBookCatg.jsp");
				req.setAttribute("message2","Book Category deleted successfully");
				rd.forward(req,resp);
				
			}
			
			else
			{
				RequestDispatcher rd=null;
				rd=req.getRequestDispatcher("/jsp/viewBookCatg.jsp");
				req.setAttribute("message3","Book Category could not be deleted.. please try again");
				rd.forward(req,resp);
			}
		}
}
