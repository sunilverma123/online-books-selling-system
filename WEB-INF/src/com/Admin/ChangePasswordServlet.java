package com.Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChangePasswordServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		resp.setContentType("text/html");
		
		String admin_id=req.getParameter("adminid");
		String old_pwd=req.getParameter("oldpwd");
		String new_pwd=req.getParameter("newpwd");
		String re_new_pwd=req.getParameter("re_newpwd");
		
		System.out.println("========retrieved form parameters========");
		System.out.println("admin_id:" +admin_id);
		System.out.println("old-pwd:" +old_pwd);
		System.out.println("new_pwd:" +new_pwd);
		System.out.println("re_new_pwd:" +re_new_pwd);
		boolean flag=false;
		boolean flag1=false;
		
		//check for valid admin
		flag=AdminDao.checkAdmin(admin_id,old_pwd);
		if(flag)
		{
			System.out.println("++++++Valid admin+++++++");
			if(new_pwd.equals(re_new_pwd))
			{
				System.out.println("&&&&&&& New_pwd and re-entered password are same &&&&&&&");
				flag1=AdminDao.changePwd(admin_id,re_new_pwd);
			}
		}
		
		if(flag1)
		{
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
			req.setAttribute("message1","Admin pwd updated successfully");
			rd.forward(req,resp);
			
		}
		
		else
		{
			String path=req.getContextPath();
			resp.sendRedirect(path+"/jsp/changePassword.jsp");
		}
	}

}
