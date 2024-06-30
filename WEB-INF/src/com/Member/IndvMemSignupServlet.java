package com.Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Admin.AdminDao;
import com.Aes.AES_Algorithm;

public class IndvMemSignupServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		try
		{
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		//retrieving form parameters
		String loginid=req.getParameter("loginid");
		String pwd=req.getParameter("pwd");
		String name=req.getParameter("name");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String pincode=req.getParameter("pin");
		int pin=Integer.parseInt(pincode);
		String email=req.getParameter("email");
		String phoneno=req.getParameter("pno");
		String password = AES_Algorithm.encrypt(pwd);
		System.out.println("Encrypted pwd is"+password);
		
		
		System.out.println("------------retreived values from memberSignUp jsp page-------------");
		System.out.println("login id:" +loginid);
		System.out.println("Password:" +pwd);
		System.out.println("name:" +name);
		System.out.println("address:" +address);
		System.out.println("city:" +city);
		System.out.println("pincode as int:" +pin);
		System.out.println("email:" +email);
		System.out.println("phoneno:" +phoneno);
		//Calling Dao's method to persist the retrieved values in database
		boolean flag=false;
		String path=req.getContextPath();
		flag=MemberDao.createIndvMember(loginid, password, name, address, city, pin, email, phoneno);
		
		if(flag)
		{
			resp.sendRedirect(path+"/MemberJsp/memberRegSuccess.jsp");
			
		}
		
		else
		{
			resp.sendRedirect(path+"/MemberJsp/memberSignUp.jsp");
		}
		}
		
		catch (Exception e)
		{
		e.printStackTrace();
		}
	}
}
