package com.Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Admin.AdminDao;
import com.model.CreditMember;

public class CreditCardMemServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		String submit=req.getParameter("action");
		HttpSession session =req.getSession();
		String loginid = session.getAttribute("loginid").toString();
		
		String cardnum=req.getParameter("cardnum");
		String name=req.getParameter("name");
		String bankname=req.getParameter("bankname");
		String exmonth=req.getParameter("exmonth");
		String exyear=req.getParameter("exyear");
		String cvvnum=req.getParameter("cvvnum");
		String amount=req.getParameter("amount");
		
		
		System.out.println("------------retreived values from createCorpMembers jsp page-------------");
		System.out.println("login id:" +loginid);
		System.out.println("card number:" +cardnum);
		System.out.println("card holder name:" +name);
		System.out.println("bank name:" +bankname);
		System.out.println("cvv number:" +cvvnum);
		System.out.println("amount:" +amount);
		System.out.println("expiry month:" +exmonth);
		System.out.println("expiry year:" +exyear);
		
		if(submit.equals("ok"))
		{
			CreditMember creditMember=new CreditMember();
			creditMember.setLoginid(loginid);
			creditMember.setCardnum(cardnum);
			creditMember.setName(name);
			creditMember.setBankname(bankname);
			creditMember.setCvvnum(cvvnum);
			creditMember.setAmount(amount);
			creditMember.setExmonth(exmonth);
			creditMember.setExyear(exyear);
			
			String path=req.getContextPath();
			boolean flag=false;
			flag=AdminDao.createCreditCardMember(creditMember);
			if(flag)
			{
				RequestDispatcher rd=null;
				rd=req.getRequestDispatcher("/GenerateBillservlet");
				req.setAttribute("creditMessage","Credit card details created successfully");
				rd.forward(req,resp);
			}
			else
			{
				resp.sendRedirect(path+"/MemberJsp/creditCard.jsp");
			}
			
			
			
		}
		//creating an object of CorpMember model class
	
	}
}

