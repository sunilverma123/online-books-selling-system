package com.Member;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemRequestBookServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		ResultSet rs=null;
		boolean flag=false;
		int mcode=0;
		
		//retrieving form parameters
		String bkcode=req.getParameter("bcode"); 
		int bcode=Integer.parseInt(bkcode);
		System.out.println("----book code value----:" +bcode);
		
		//retrieving the request date(current date)
		java.util.Date date=new java.util.Date();
		System.out.println("--------Date value:" +date);
				
		//converting date.util to sql.date
		Date sqlDate=new Date(date.getTime());
		System.out.println("++++++date value after converting to sql:" +sqlDate);
		
		//retrieving member login id from session attribute
		HttpSession session=req.getSession();
		String login_id=(String) session.getAttribute("loginid");
		System.out.println("-----member loginid from session attribute---;" +login_id);
		
		//calling MemberDao's getMemCode method
		rs=MemberDao.getMemCode(login_id);
		try 
		{
			while(rs.next())
			{
				mcode=rs.getInt(1);
				System.out.println("====member code retrieved from MemberDao===:" +mcode);
			}
		} 
		catch (SQLException e) 
		{
			System.out.println("=====Exception in MemRequestBookServlet=====");
			e.printStackTrace();
		}
		
		//calling MemberDao's memBookRequest method
		flag=MemberDao.memBookRequest(sqlDate,mcode,bcode);
		
		RequestDispatcher rd=null;
		if(flag)
		{
			
			rd=req.getRequestDispatcher("/MemberJsp/memRequestBooks.jsp");
			req.setAttribute("message1","Member book request inserted successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			rd=req.getRequestDispatcher("/MemberJsp/memRequestBooks.jsp");
			req.setAttribute("message2","Member book request insertion unsuccessfull");
			rd.forward(req,resp);
		}
		
		
		
		
	}
}
