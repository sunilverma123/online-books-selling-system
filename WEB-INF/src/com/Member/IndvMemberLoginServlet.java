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
import com.Aes.AES_Algorithm;

public class IndvMemberLoginServlet extends HttpServlet
{
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
		{
			try
			{
			resp.setContentType("text/html");
			PrintWriter out=resp.getWriter();
			
			//retrieving form parameters
			String login_id=req.getParameter("loginid");
			//setting the session attribute to store admin_id
			HttpSession session=req.getSession();
			session.setAttribute("loginid", login_id);
			String password=req.getParameter("pwd");
			String userName = session.getAttribute("loginid").toString();
			//String password1 = AES_Algorithm.encrypt(pwd);
			boolean flag=false;
			
			String enc_pass=MemberDao.getMem_encrypass(login_id);
			System.out.println("@@@@@@@@Member loginid:" +login_id);
			System.out.println("User name ++++++++:" +userName);
			System.out.println("@@@@@@@@Member Encryption password:" +enc_pass);
			System.out.println("@@@@@@@@Member INPUT password:" +password);
			String decrypt_pass=AES_Algorithm.decrypt(enc_pass.trim());
			
			System.out.println("Decryption Password :"+decrypt_pass.trim());
			
			
			//flag=MemberDao.checkIndvMember(login_id, password);
			
			RequestDispatcher rd=null;
			if(password.equals(decrypt_pass))
			{
				
				System.out.println("@@@@@@ Login successfull!!!!!!!");
				rd=req.getRequestDispatcher("/MemberJsp/memberHome.jsp");
				rd.forward(req,resp);
			}
			
			else
			{
				
				System.out.println(".......Member Login unsuccessfull");
				rd=req.getRequestDispatcher("/MemberJsp/memberLogin.jsp");
				req.setAttribute("status","Sorry,invalid username or password or not an Individual Registered member");
				rd.forward(req,resp);
			}
		}catch (Exception e)
		{
			System.out.println("oop's ERROR:IndvMemberLoginServlet...");
			// TODO: handle exception
		}
			
		}
}
