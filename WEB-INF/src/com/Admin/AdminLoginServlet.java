package com.Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginServlet extends HttpServlet
{
	RequestDispatcher rd=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		String username=req.getParameter("loginid");
		//setting the session attribute to store admin_id
		HttpSession session=req.getSession();
		session.setAttribute("admin_id", username);
		String password=req.getParameter("pwd");
		boolean flag=false;
		
		System.out.println("@@@@@@@@admin username:" +username);
		System.out.println("@@@@@@@@admin password:" +password);
		
		flag=AdminDao.checkAdmin(username, password);
		
		if(flag==true)
		{
			String path=req.getContextPath();
			System.out.println("@@@@@@Admin Login successfull!!!!!!!");
			resp.sendRedirect(path+"/jsp/adminHome2.jsp");
			//rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
			//rd.forward(req,resp);
		}
		
		else
		{
			System.out.println(".......Admin Login unsuccessfull");
			rd=req.getRequestDispatcher("/jsp/adminLogin2.jsp");
			req.setAttribute("status","Sorry,invalid username or password");
			rd.forward(req,resp);
		}
	}
}
