package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		
		HttpSession session=req.getSession(false);
		if(session!=null)
		{
			session.invalidate();
			System.out.println("session invalidated successfully...admin logout successfull");
			//req.setAttribute("message1","Admin Logout successfull");
			//resp.sendRedirect(req.getContextPath()+"/index.jsp");
		
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/index.jsp");
			req.setAttribute("message1","Admin Logout successfull");
			rd.forward(req,resp);
			
		}
	}
}
