package com.Admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddBookCatgServlet extends HttpServlet
{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
		{
			resp.setContentType("text/html");
			boolean flag=false;
			boolean flag1=false;
			ResultSet rs=null;
			ResultSet rs1=null;
			int cat_code=0;
			int phoneno=0;
			
			//retreiving form parameters
			String cat_name=req.getParameter("catname");
			String desc=req.getParameter("desc");
			
			System.out.println("+++++++cat_name:" +cat_name);
			System.out.println("+++++++cat description:" +desc);
			
			flag=AdminDao.addBookCatg(cat_name, desc);
			
			/*if(flag)
			{
				System.out.println("======Book catg added successfully from AddBookCatgServlet==========");
				rs=AdminDao.getCatCode(cat_name);
				try 
				{
					while(rs.next())
					{
						cat_code=rs.getInt(1);
						
						rs1=AdminDao.getMCodeAndMPno(cat_code);
						while(rs1.next())
						{
							phoneno=rs1.getInt(1);
							flag1=true;
						}
						
						
					}
				} 
				catch (SQLException e) 
				{
					System.out.println("==========Exception in AddBookCatgServlet==========");
					e.printStackTrace();
				}
				System.out.println("++++cat_code value from AddBookCatgServlet+++++++:" +cat_code);
				System.out.println("++++phoneno value from AddBookCatgServlet+++++++:" +phoneno);
			}*/
				
			if(flag)
			{
				
				RequestDispatcher rd=null;
				rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
				req.setAttribute("bookMessage","book category added successfully");
				rd.forward(req,resp);
				
			}
			
			else
			{
				String path=req.getContextPath();
				resp.sendRedirect(path+"/jsp/addBookCatg.jsp");
			}
			
			
		}
}
