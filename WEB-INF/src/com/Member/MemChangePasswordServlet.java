package com.Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Admin.AdminDao;
import com.Aes.AES_Algorithm;

public class MemChangePasswordServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		try
		{

		String loginid=req.getParameter("loginid");
		String old_pwd=req.getParameter("oldpwd");
		String new_pwd=req.getParameter("newpwd");
		String re_new_pwd=req.getParameter("re_newpwd");
		
		System.out.println("========retrieved form parameters========");
		System.out.println("loginid:" +loginid);
		System.out.println("old-pwd:" +old_pwd);
		System.out.println("new_pwd:" +new_pwd);
		System.out.println("re_new_pwd:" +re_new_pwd);
		boolean flag=false;
		boolean flag1=false;
		
		//check for valid member
		//flag=MemberDao.checkIndvMember(loginid,old_pwd);
		String enc_pass_in_edit=MemberDao.getMem_encrypass(loginid);
		String decrypt_pass_of_edit=AES_Algorithm.decrypt(enc_pass_in_edit.trim());
		
		System.out.println("Decryption Password :"+decrypt_pass_of_edit.trim());
		
		if(old_pwd.equals(decrypt_pass_of_edit))
		{
			System.out.println("++++++Valid member+++++++");
			if(new_pwd.equals(re_new_pwd))
			{
				String en_re_new_pwd = AES_Algorithm.encrypt(re_new_pwd);
				System.out.println("&&&&&&& New_pwd and re-entered password are same &&&&&&&");
				flag1=MemberDao.changePwd(loginid,en_re_new_pwd);
			}
		}
		
		if(flag1)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/MemberJsp/memberHome.jsp");
			req.setAttribute("message1","Member pwd updated successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			String path=req.getContextPath();
			resp.sendRedirect(path+"/MemberJsp/memChangePassword.jsp");
		}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
