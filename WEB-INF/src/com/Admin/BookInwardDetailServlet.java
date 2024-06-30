package com.Admin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookInwardDetailServlet extends HttpServlet
{
	static int flgCounter=0;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		
		int flgCounter=0;
		resp.setContentType("text/html");
		
		//retrieving from parameters
		/*String iw_date=req.getParameter("iwdate");
		String iw_month=req.getParameter("iwmonth");
		String iw_year=req.getParameter("iwyear");*/
		String bcode=req.getParameter("bcode");
		
		
		
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		   //get current date time with Date()
		   Date date = new Date();
		   System.out.println("Today date is++++++++++++++++++++++++"+dateFormat.format(date));
		
		
		
		String nbooks=req.getParameter("numBooks");
		
		System.out.println("**********retrieved req parameters****");
		/*System.out.println("iw_date:" +iw_date);
		System.out.println("iw_month:" +iw_month);
		System.out.println("iw_year:" +iw_year);*/
		System.out.println("bcode:" +bcode);
		
		System.out.println("no of books:" +nbooks);
		
		//converting string to int 
		/*int iwDate=Integer.parseInt(iw_date);
		int iwMonth=Integer.parseInt(iw_month);
		int iwYear=Integer.parseInt(iw_year);*/
		int bkcode=Integer.parseInt(bcode);
		int numBooks=Integer.parseInt(nbooks);
		
		
		String bname=AdminDao.getBookName(bkcode);
		System.out.println("====bname======"+bname);
		
		/*String date=iwDate+"/"+iwMonth+"/"+iwYear;
		System.out.println("====Inward date:" +date);*/
		
		//converting String to java.util.Date and then to java.sql.Date
		/*Date date2=null;
		try 
		{
			date2=new SimpleDateFormat("dd/mm/yyyy").parse(date);
		} 
		catch (ParseException e) {
			System.out.println("=====Exception in BookInwardDetailServlet+++++++");
			e.printStackTrace();
		}*/
		
		java.sql.Date sqldate=new java.sql.Date(date.getTime());
		System.out.println("MySql Date:" +sqldate);
		
		boolean flag=false;
		boolean flag1=false;
		boolean flag2=false;
		ResultSet rs=null;
		ArrayList mphonelist=new ArrayList();
		String msg="Dear member,The book you requested is now available..Please visit our website";
		String m_phoneno="";
		int phoneCounter=1;
		
		
		flag=AdminDao.addBookInwardDetail(sqldate, bkcode, numBooks);
		if(flag)
		{
			flag1=AdminDao.updateStockInBkDetail(bkcode, numBooks);
			if(flag1)
			{
				mphonelist=AdminDao.getMcodePhoneno(bkcode);
				System.out.println("=====mphonelist from BookInwardDetailServlet========" +mphonelist);
				/*phoneCounter=mphonelist.size();*/
				System.out.println("======No of phone numbers in mphonelist are---:" +phoneCounter);
				
				if(mphonelist.size()!=0)
				{
					for(int i=0;i<mphonelist.size();i++)
					{
						m_phoneno=(String)mphonelist.get(i);
						System.out.println("m_phoneno from BookInwardDetailServlet:" +m_phoneno);
						
						//flag2=AdminDao.sendSMS("9886692401".trim(), msg.trim());
						
					System.out.println("+++++++++++++++++++++++++++");
					//System.out.println("+++++++++++++++++++++++++++++++++++++++++++");
			       // boolean flag = true;
			        //try
			        //{
			        	//System.out.println("+++++++++++++++++++++++++++++++++++++++++++");
			            String postData = "";
			            String retval = "";
			            String User = "blrstore";
					    String passwd = "dhscvs123";
			            String sid = "dhs";
			            String mtype = "N";
			            String DR = "Y";
			            postData = (new StringBuilder(String.valueOf(postData))).append("User=").append(URLEncoder.encode(User, "UTF-8")).append("&passwd=").append(passwd).append("&mobilenumber=").append(m_phoneno).append("&message=").append(URLEncoder.encode(msg, "UTF-8")).append("&sid=").append(sid).append("&mtype=").append(mtype).append("&DR=").append(DR).toString();
			            System.out.println("111111111111111111111111111111111111111111111111111111111111");
			            System.out.println("==============PostDatas=======: "+postData);
			            URL url = new URL("http://smscountry.com/SMSCwebservice.asp");
			            System.out.println("==============URL=======: "+url);
			            HttpURLConnection urlconnection = (HttpURLConnection)url.openConnection();
			            urlconnection.setRequestMethod("POST");
			            urlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			            urlconnection.setDoOutput(true);
			            OutputStreamWriter out = new OutputStreamWriter(urlconnection.getOutputStream());
			            out.write(postData);
			            out.close();
			            BufferedReader in = new BufferedReader(new InputStreamReader(urlconnection.getInputStream()));
			            String decodedString;
			            while((decodedString = in.readLine()) != null) 
			                retval = (new StringBuilder(String.valueOf(retval))).append(decodedString).toString();
			            in.close();
			            System.out.println(retval);
			            
			            System.out.println("+++++++++++++++++++++++++++++++++");
						
						flag2=true;
						if(flag2)
						{
							
							flgCounter = flgCounter+1 ;
							
							
						}
						
						//break;
						
					}
					System.out.println("-----No of times sms sent successfully i.e flgCounter value is:" +flgCounter);
					if(flgCounter==phoneCounter)
					{
						System.out.println("++++++Book inward,stock detail added and sms sent to book requested members+++++++++");
						RequestDispatcher rd=null;
						rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
						req.setAttribute("bkiwMessage","book inward detail added successfully");
						rd.forward(req,resp);
						
					}
					else
					{
						RequestDispatcher rd=null;
						rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
						req.setAttribute("bkiwMessage","book inward detail added successfully");
						rd.forward(req,resp);
					}
				}
				

				 if(mphonelist.size()==0)
				{
					System.out.println("++++++Book inward and stock detail added successfully and there are no members who requested for book======");
					RequestDispatcher rd=null;
					rd=req.getRequestDispatcher("/jsp/adminHome.jsp");
					req.setAttribute("bkiwMessage1","book inward detail added successfully");
					rd.forward(req,resp);
					
				}
					

				
					
			}
		}
		
		else 
		{
			System.out.println("++++++Book inward  detail addition unsuccessfull ======");
			RequestDispatcher rd=null;
			rd=req.getRequestDispatcher("/jsp/addbookInwardDetails.jsp");
			req.setAttribute("unsuccess","book inward detail addition unsuccessfull");
			rd.forward(req,resp);
			
		}
	}
	
		
	

}
