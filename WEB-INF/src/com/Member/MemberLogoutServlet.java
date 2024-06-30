package com.Member;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		
		HttpSession session=req.getSession(false);
		boolean flag=false;
		ResultSet rs=null;
		RequestDispatcher rd=null;
		ResultSet rs1=null;
		int mcode=0;
		String loginid=(String) session.getAttribute("loginid");
		rs1=MemberDao.getMemCode(loginid);
		try 
		{
			while(rs1.next())
			{
				mcode=rs1.getInt(1);
			}
		} 
		catch (SQLException e1) 
		{
			System.out.println("====Exception in GenerateBillservlet====");
			e1.printStackTrace();
		}
		
		if(session!=null)
		{
			rs=MemberDao.getTempCart(mcode);
			
			try 
			{
				System.out.println("-----rs.next() value:" +rs.next());
				if(rs.next())
				{
					flag=MemberDao.deleteFromCart(mcode);
					System.out.println("=====flag value from MemberLogoutServlet===:" +flag);
					
					if(flag)
					{
						session.invalidate();
						System.out.println("session invalidated successfully...Member logout successfull");
						
						rd=req.getRequestDispatcher("/index.jsp");
						req.setAttribute("message3","member Logout successfull");
						rd.forward(req,resp);
						
					}
				}
				
				else if(rs.next()==false)
				{
					session.invalidate();
					System.out.println("session invalidated successfully...Member logout successfull");
					
					rd=req.getRequestDispatcher("/index.jsp");
					req.setAttribute("message3","member Logout successfull");
					rd.forward(req,resp);
				}
				
				else
				{
					String path=req.getContextPath();
					resp.sendRedirect(path+"/MemberJsp/memberHome.jsp");
				}
			}
			catch (SQLException e)
			{
				System.out.println("==== Exception in MemberLogoutServlet=====");
				e.printStackTrace();
			}
			
		}
			
	}

}