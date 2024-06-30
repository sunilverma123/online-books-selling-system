package com.Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Aes.AES_Algorithm;
import com.model.CorpMember;

public class CreateCorpMemServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		String loginid=req.getParameter("loginid");
		String pwd =req.getParameter("pwd");
		String user_type=req.getParameter("usertype");
		String company_name=req.getParameter("compname");
		String name=req.getParameter("name");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String pincode=req.getParameter("pin");
		int pin=Integer.parseInt(pincode);
		String email=req.getParameter("email");
		String phoneno=req.getParameter("pno");
		String status=req.getParameter("status");
		String password = "";
		
		try {
			password = AES_Algorithm.encrypt(pwd);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("------------retreived values from createCorpMembers jsp page-------------");
		System.out.println("login id:" +loginid);
		System.out.println("Password:" +password);
		System.out.println("user type:" +user_type);
		System.out.println("company name:" +company_name);
		System.out.println("name:" +name);
		System.out.println("address:" +address);
		System.out.println("city:" +city);
		System.out.println("pincode as int:" +pin);
		System.out.println("email:" +email);
		System.out.println("phoneno:" +phoneno);
		System.out.println("status:" +status);
		
		//creating an object of CorpMember model class
		CorpMember corpMember=new CorpMember();
		corpMember.setLoginid(loginid);
		corpMember.setPwd(password);
		corpMember.setUsertype(user_type);
		corpMember.setComp_name(company_name);
		corpMember.setName(name);
		corpMember.setAddress(address);
		corpMember.setCity(city);
		corpMember.setPin(pin);
		corpMember.setEmail(email);
		corpMember.setPhoneno(phoneno);
		corpMember.setStatus(status);
		
		String path=req.getContextPath();
		boolean flag=false;
		flag=AdminDao.createCorpMember(corpMember);
		if(flag)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
			req.setAttribute("corpMessage","Corporate user created successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			resp.sendRedirect(path+"/jsp/createCorpMembers.jsp");
		}
	}
}
