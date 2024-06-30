package com.Member;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NetAmountCal extends HttpServlet
{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
		{
			ResultSet rs=null;
			ResultSet rs1=null;
			RequestDispatcher rd=null;
			ArrayList<Float> priceList=new ArrayList<Float>();
			ArrayList<Float> discList=new ArrayList<Float>();
			ArrayList<Float> taxList=new ArrayList<Float>();
			int mcode=0;
			float price=0;
			float tax=0;
			float discount=0;
			float discount_cost=0;
			float net_amount=0;
			
			HttpSession session=req.getSession();
			String loginid=(String) session.getAttribute("loginid");
			rs1=MemberDao.getMemCode(loginid);
			String submit =null;
			submit=req.getParameter("creditCard");
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
			
			
			//retrieving date and converting to sql date
			java.util.Date date=new java.util.Date();
			System.out.println("-------- util Date value:" +date);
			Date sqlDate=new Date(date.getTime());
			System.out.println("++++++date value after converting to sql:" +sqlDate);
			
			
			//calling getTempCart method of MemberDao to get all rows from temp_cart table
			rs=MemberDao.getTempCart(mcode);
			try 
			{
				while(rs.next())
				{
					//mcodeList.add(rs.getInt(1));
					priceList.add(rs.getFloat(5));
					taxList.add(rs.getFloat(9));
					discList.add(rs.getFloat(10));
				}
			}
			catch (SQLException e) 
			{
				System.out.println("====exception in GenerateBillservlet==== ");
				e.printStackTrace();
			}
			
			if(priceList!=null)
			{
				for(int i=0;i<priceList.size();i++)
				{
					price=priceList.get(i)+price;
					tax=taxList.get(i)+tax;
					discount=discList.get(i)+discount;
					discount_cost=price-discount;
					net_amount=discount_cost+tax;
					
				}
				
				System.out.println("------Total cost i.e Sum(price) value===:" +price);
				System.out.println("------ Total discount i.e Sum(discount) value===:" +discount);
				System.out.println("------discount cost i.e sum(discount_cost) value==:" +discount_cost);
				System.out.println("-------Total tax amount  i.e sum(tax) value===:" +tax);
				System.out.println("----- net amount i.e sum(discont_cost+tax) value====:" +net_amount);//this is the amount the member will pay
				session.setAttribute("total_amount",net_amount);
				
				
					if(submit.equals("Credit Card Payment"))
					{
						rd = req.getRequestDispatcher("/MemberJsp/creditCard.jsp?&netamount="+net_amount+"");
						rd.forward(req,resp);
					}
				
				
				
				
			}
		}
}

