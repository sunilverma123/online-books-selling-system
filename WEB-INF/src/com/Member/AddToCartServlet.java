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

public class AddToCartServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		ResultSet rs=null;
		int mcode=0;
		String user_type="";
		float discount=0;
		
		//retriving url request parameters
		String bkcode=req.getParameter("bcode");
		String bname=req.getParameter("bname");
		String lang=req.getParameter("lang");
		String price=req.getParameter("price");
		String author=req.getParameter("author");
		String publ=req.getParameter("publ");
		String stock=req.getParameter("stock");
		String tax=req.getParameter("tax");
		String idisc=req.getParameter("idisc");
		String cdisc=req.getParameter("cdisc");
		
		//converting String to int and float respectively
		int bcode=Integer.parseInt(bkcode);
		float bprice=Float.parseFloat(price);
		int bstock=Integer.parseInt(stock);
		float btax=Float.parseFloat(tax);
		float idsc=Float.parseFloat(idisc);
		float cdsc=Float.parseFloat(cdisc);
		
		
		System.out.println("*******retrieved url parameters*******");
		System.out.println("====bcode==:" +bcode);
		System.out.println("====bname==:" +bname);
		System.out.println("====lang===:" +lang);
		System.out.println("====price==:" +bprice);
		System.out.println("===author==:" +author);
		System.out.println("===publ===:" +publ);
		System.out.println("===stock==:" +bstock);
		System.out.println("===tax==:" +btax);
		System.out.println("===idisc==:"+idsc);
		System.out.println("===cdisc==:"+cdsc);
		
		//retrieving loginid from session
		HttpSession session=req.getSession();
		String login_id=(String) session.getAttribute("loginid");
		System.out.println("=====loginid of user from session===:" +login_id);
		
		
		RequestDispatcher rd=null;
		if(bstock<=0)
		{
			rd=req.getRequestDispatcher("/MemberJsp/memBuyBooks.jsp");
			req.setAttribute("message5","Book is out of stock");
			rd.forward(req,resp);
		}
		else
		{
		
		//retrieving mem code 
		rs=MemberDao.getMemCode(login_id);
		
		try 
		{
			while(rs.next())
			{
				mcode=rs.getInt(1);
				user_type=rs.getString(2);
				System.out.println("++++++==mcode from AddToCartServlet++++=:" +mcode);
				System.out.println("++++++==m_user_type from AddToCartServlet++++=:" +user_type);
			}
		} 
		catch (SQLException e) 
		{
			System.out.println("====Exception in AddToCartServlet=====");
			e.printStackTrace();
		}
		
		//deciding individual or corporate discount based on user_type
		if(user_type.equals("I"))
		{
			discount=idsc;
		}
		else if(user_type.equals("C"))
		{
			discount=cdsc;
		}
		System.out.println("'''''Discount value from AddToCartServlet'''':" +discount);
		
		
		//calling addToCart method of MemberDao
		boolean flag=false;
		flag=MemberDao.addToCart(mcode, bcode, bname, lang, bprice, author, publ, bstock, btax, discount);
		
		//RequestDispatcher rd=null;
		if(flag)
		{
			
			rd=req.getRequestDispatcher("/MemberJsp/memBuyBooks.jsp");
			req.setAttribute("message1","Book added to cart successfully");
			rd.forward(req,resp);
		}
		
		else
		{
			rd=req.getRequestDispatcher("/MemberJsp/memBuyBooks.jsp");
			req.setAttribute("message2","unsuccessfull");
			rd.forward(req,resp);
		}
		}
		
	}
}
