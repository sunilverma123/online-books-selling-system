package com.Member;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Member.MemberDao;

public class WelcomePageSearchBookServlet extends HttpServlet
{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
		{
			
			ResultSet rs=null;
			boolean flag=false;
			ArrayList bknameList=new ArrayList();
			ArrayList bklangList=new ArrayList();
			ArrayList bkpriceList=new ArrayList();
			ArrayList authorList=new ArrayList();
			ArrayList publList=new ArrayList();
			ArrayList stockList=new ArrayList();
			bknameList.toString().toUpperCase();
			RequestDispatcher rd=null;
			
			//retrieving foem request parameters
			String bkname=req.getParameter("bkname");
			System.out.println("========Search book name=====>>:" +bkname);
			
			//calling the method in MemberDao to search the book
			rs=MemberDao.searchBook(bkname);
			try 
			{
				while(rs.next())
				{
					bknameList.add(rs.getString(1));
					bklangList.add(rs.getString(2));
					bkpriceList.add(rs.getFloat(3));
					authorList.add(rs.getString(4));
					publList.add(rs.getString(5));
					stockList.add(rs.getInt(6));
					flag=true;
				}
			} 
			catch (SQLException e) 
			{
				System.out.println("=======Exception in MemSearchBookServlet=====");
				e.printStackTrace();
			}
			
			System.out.println("=====book name list:" +bknameList);
			System.out.println("=====book lang list:" +bklangList);
			System.out.println("=====price list:" +bkpriceList);
			System.out.println("=====author list:" +authorList);
			System.out.println("=====publ list:" +publList);
			System.out.println("=====stock list:" +stockList);
			
			if(flag)
			{
				rd=req.getRequestDispatcher("/MemberJsp/WelcomePageSearchBook.jsp");
				req.setAttribute("bknameList",bknameList);
				req.setAttribute("bklangList",bklangList);
				req.setAttribute("bkpriceList",bkpriceList);
				req.setAttribute("authorList",authorList);
				req.setAttribute("publList",publList);
				req.setAttribute("stockList",stockList);
				rd.forward(req,resp);
			}
			else
			{
				rd=req.getRequestDispatcher("MemberJsp/WelcomePageSearchBook.jsp");
				req.setAttribute("message","No search Results Found");
				rd.forward(req,resp);
			}
		}
}

