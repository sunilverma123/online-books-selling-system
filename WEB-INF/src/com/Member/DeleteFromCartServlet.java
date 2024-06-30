package com.Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Admin.AdminDao;

public class DeleteFromCartServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		boolean flag=false;
		
		//retreiving form parameters
		String bkcode=req.getParameter("bcode");
		int bcode=Integer.parseInt(bkcode);
		System.out.println("------------retreived values from viewBookDetails jsp page-------------");
		System.out.println("====b_code:" +bcode);
		
		flag=MemberDao.singledeleteFromCart(bcode);
		
		if(flag)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/MemberJsp/viewCart.jsp");
			req.setAttribute("message1","Book detail deleted from cart successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/MemberJsp/viewCart.jsp");
			req.setAttribute("message2","Book Detail could not be deleted.. please try again");
			rd.forward(req,resp);
		}
	}
}
