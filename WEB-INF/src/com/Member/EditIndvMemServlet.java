package com.Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Admin.AdminDao;

public class EditIndvMemServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		
		//retriving the loginid from session attribute
		HttpSession session=req.getSession();
		String sess_loginid=(String) session.getAttribute("loginid");
		System.out.println("++++++++loginid retrieved from session:" +sess_loginid);
		
		//retrieving form request parameters
		String loginid=req.getParameter("loginid");
		String pwd=req.getParameter("pwd");
		String user_type=req.getParameter("usertype");
		String name=req.getParameter("name");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String pincode=req.getParameter("pin");
		int pin=Integer.parseInt(pincode);
		String email=req.getParameter("email");
		String phoneno=req.getParameter("pno");
				
		System.out.println("------------retreived values from EditMembers jsp page-------------");
		System.out.println("login id:" +loginid);
		System.out.println("Password:" +pwd);
		System.out.println("user type:" +user_type);
		System.out.println("name:" +name);
		System.out.println("address:" +address);
		System.out.println("city:" +city);
		System.out.println("pincode as int:" +pin);
		System.out.println("email:" +email);
		System.out.println("phoneno:" +phoneno);
		
		String path=req.getContextPath();
		boolean flag=false;
		flag=MemberDao.editMember(sess_loginid,loginid,pwd,name,address,city,pin,email,phoneno);
		
		if(flag)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/MemberJsp/memberHome.jsp");
			req.setAttribute("message","Member updated successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			System.out.println("Member profile updation unsuccessfull");
			resp.sendRedirect(path+"/MemberJsp/memEditProfile.jsp");
			
		}
		
	
		
	}
}
