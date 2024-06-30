package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteBookDetailServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		boolean flag=false;
		
		//retreiving form parameters
		String code=req.getParameter("code1");
		int b_code=Integer.parseInt(code);
		System.out.println("------------retreived values from viewBookDetails jsp page-------------");
		System.out.println("b_code:" +b_code);
		
		flag=AdminDao.deleteBookDetail(b_code);
		
		if(flag)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/viewBookDetails.jsp");
			req.setAttribute("message2","Book detail deleted successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/viewBookDetails.jsp");
			req.setAttribute("message3","Book Detail could not be deleted.. please try again");
			rd.forward(req,resp);
		}
	}

}
