package com.Admin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.net.*;

import com.dbconnectors.DbConnector;
import com.model.CorpMember;
import com.model.CreditMember;

public class AdminDao 
{
	static Connection con=null;
	static Statement stmt=null;
	static ResultSet rs=null;
	static ResultSet rs1=null;
	static ResultSet rs2=null;
	static ResultSet rs3=null;
	
	public static boolean checkAdmin(String username,String password)
	{
		con=DbConnector.getConnection();
		boolean flag=false;
		String sql="";
		
		try
		{
			stmt=con.createStatement();
			sql="select * from m_admin where admin_id='"+username+"' and admin_pwd='"+password+"' ";
			System.out.println(sql);
			rs=stmt.executeQuery(sql);
			flag=rs.next();
			if(flag)
			{
				System.out.println("-----flag value from checkAdmin method in AdminDao: " +flag);
				System.out.println("+++==Row exists++++");
			}
			else
			{
				System.out.println("row does not exist");
			}
			
			
		} 
		catch (SQLException e) 
		{
			System.out.println("exception in checkAdmin()");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag==true)
			return true;
		
		else
			return false;
		
	}
	
	
	public static boolean createCorpMember(CorpMember corpMember)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_member(m_login_id,m_password,m_user_type,m_company_name,m_contact_name,m_address,m_city,m_pincode,m_emailid,m_phoneno,m_status)" +
				"values('"+corpMember.getLoginid()+"','"+corpMember.getPwd()+"','"+corpMember.getUsertype()+"','"+corpMember.getComp_name()+"','"+corpMember.getName()+"','"+corpMember.getAddress()+"','"+corpMember.getCity()+"','"+corpMember.getPin()+"','"+corpMember.getEmail()+"','"+corpMember.getPhoneno()+"','"+corpMember.getStatus()+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 corporate user created successfully %%%%%%%%");
				System.out.println("------flag value from createCorpMember------:" +flag);
			}
			else
				System.out.println("888888 corporate user creation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in createCorpMember method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
	}
	
	
	
	public static boolean createCreditCardMember(CreditMember creditMember)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_creditCard_mem(login_id,cardnum,name,bankname,exmonth,exyear,cvvnum,amount)" +
				"values('"+creditMember.getLoginid()+"','"+creditMember.getCardnum()+"','"+creditMember.getName()+"','"+creditMember.getBankname()+"','"+creditMember.getExmonth()+"','"+creditMember.getExyear()+"','"+creditMember.getCvvnum()+"','"+creditMember.getAmount()+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("member credit detail created successfully %%%%%%%%");
				System.out.println("------flag value from createCorpMember------:" +flag);
			}
			else
				System.out.println("member credit detail creation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in credit detail creation method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
	}
	
	
	
	public static boolean editMember(CorpMember corpMember,int mcode)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="update m_member set m_login_id='"+corpMember.getLoginid()+"',m_password='"+corpMember.getPwd()+"',m_user_type='"+corpMember.getUsertype()+"',"+
			"m_company_name='"+corpMember.getComp_name()+"',m_contact_name='"+corpMember.getName()+"',m_address='"+corpMember.getAddress()+"',"+
			"m_city='"+corpMember.getCity()+"',m_pincode='"+corpMember.getPin()+"',m_emailid='"+corpMember.getEmail()+"',m_phoneno='"+corpMember.getPhoneno()+"',m_status='"+corpMember.getStatus()+"' where m_code='"+mcode+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 corporate user updated successfully %%%%%%%%");
				System.out.println("------flag value from editMember------:" +flag);
			}
			else
				System.out.println("888888 corporate user updation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in editMember method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
		
	}
	
	public static boolean addBookCatg(String catname,String desc)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_categories(cat_name,cat_description) values('"+catname+"','"+desc+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book Category added successfully %%%%%%%%");
				System.out.println("------flag value from addBookCatg------:" +flag);
			}
			else
				System.out.println("888888 Book Category insertion unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in addBookCatg method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
		
	}

	
	
	public static boolean editBookCatg(int catcode,String catname,String desc)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="update m_categories set cat_name='"+catname+"',cat_description='"+desc+"' where cat_code='"+catcode+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book Category updated successfully %%%%%%%%");
				System.out.println("------flag value from editBookCatg------:" +flag);
			}
			else
				System.out.println("888888 Book Category updation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in editBookCatg method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
		
	}

	
	public static boolean deleteBookCatg(int catcode)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="delete from m_categories where cat_code='"+catcode+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book Category deleted successfully %%%%%%%%");
				System.out.println("------flag value from deleteBookCatg------:" +flag);
			}
			else
				System.out.println("888888 Book Category deletion unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in deleteBookCatg method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
		
	}

	public static int getCatCode(String catname)
	{
		con=DbConnector.getConnection();
		String sql="select cat_code from m_categories where cat_name='"+catname+"'";
		System.out.println(sql);
		int cat_code=0;
		try 
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				cat_code=rs.getInt(1);
				System.out.println("++++++cat_code value from getCatCode method of AdminDao:" +cat_code);
			}
		}
		catch (SQLException e) 
		{
			System.out.println("-----Exception in getCatCode method of AdminDao-----");
			e.printStackTrace();
		}
			
			
		return cat_code;
		
	}
	
	public static String getBookName(int bcode)
	{
		System.out.println("+++getBookName code :+++++"+bcode);
		con=DbConnector.getConnection();
		String sql="select b_name from m_book where b_code='"+bcode+"'";
		System.out.println(sql);
		String bookname=null; 
		try 
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				bookname=rs.getString(1);
				System.out.println("++++++bookname value from getBookName method of AdminDao:" +bookname);
			}
		}
		catch (SQLException e) 
		{
			System.out.println("-----Exception in getBookName method of AdminDao-----");
			e.printStackTrace();
		}
			
			System.out.println("");
		return bookname;
		
	}
	/*public static ResultSet getMCodeAndMPno(int cat_code)
	{
		con=DbConnector.getConnection();
		String sql="select m_code from m_member_interest where cat_code='"+cat_code+"'";
		System.out.println(sql);
		int m_code=0;
		int m_phoneno=0;
		
		try 
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				m_code=rs.getInt(1);
				System.out.println("++++++m_code value from getMCode method of AdminDao:" +m_code);
				rs2=AdminDao.getMPhoneno(m_code);
				while(rs2.next())
				{
					m_phoneno=rs2.getInt(1);
					System.out.println("++++++m_phoneno value from getMCode method of AdminDao:" +m_phoneno);
					
				}
				
			}
		}
		catch (SQLException e) 
		{
			System.out.println("-----Exception in getMCode method of AdminDao-----");
			e.printStackTrace();
		}
			
			
		return rs2;
		
	}
	
	
	public static ResultSet getMPhoneno(int m_code)
	{
		con=DbConnector.getConnection();
		String sql="select m_phoneno from m_member where m_code='"+m_code+"'";
		System.out.println(sql);
		int m_phoneno=0;
		
		try 
		{
			stmt=con.createStatement();
			rs1=stmt.executeQuery(sql);
			while(rs1.next())
			{
				m_phoneno=rs1.getInt(1);
				System.out.println("++++++m_phoneno value from getMPhoneno method of AdminDao:" +m_phoneno);
				
			}
		}
		catch (SQLException e) 
		{
			System.out.println("-----Exception in getMPhoneno method of AdminDao-----");
			e.printStackTrace();
		}
			
			
		return rs1;
		
	}*/
	
	

	  public static boolean sendSMS(String mobilenumber, String message) throws IOException
	    {
			System.out.println("+++++++++++++++++++++++++++++++++++++++++++");
	        boolean flag = true;
	        //try
	        //{
	        	System.out.println("+++++++++++++++++++++++++++++++++++++++++++");
	            String postData = "";
	            String retval = "";
	            String User = "dhs";
	            String passwd = "noteasy";
	            String sid = "dhs";
	            String mtype = "N";
	            String DR = "Y";
	            postData = (new StringBuilder(String.valueOf(postData))).append("User=").append(URLEncoder.encode(User, "UTF-8")).append("&passwd=").append(passwd).append("&mobilenumber=").append(mobilenumber).append("&message=").append(URLEncoder.encode(message, "UTF-8")).append("&sid=").append(sid).append("&mtype=").append(mtype).append("&DR=").append(DR).toString();
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
	       // }
	        //catch(Exception e)
	        //{
	        	//System.out.println("=============Verification password==============");
	          //  System.out.println(e);
	           // flag = false;
	        //}
	        return flag;
	    }
	  
	  public static void main(String[] args) throws IOException 
	  {
		AdminDao.sendSMS("9900392855", "test msg");
	}
	  
	  public static boolean addBookDetail(String bkname,int catcode,String lang,float price,String author,String publ,float tax,int idisc,int cdisc,String bdesc,String status)
		{
			con=DbConnector.getConnection();
			int flag=0;
			String sql="";
			sql="insert into m_book(b_name,cat_code,b_language,b_price,b_author,b_publication,b_tax,b_indv_discount,b_corp_discount,b_descr,b_status)"+ 
				"values('"+bkname+"','"+catcode+"','"+lang+"','"+price+"','"+author+"','"+publ+"','"+tax+"','"+idisc+"','"+cdisc+"','"+bdesc+"','"+status+"')";
			System.out.println(sql);
			try 
			{
				stmt=con.createStatement();
				flag=stmt.executeUpdate(sql);
				if(flag>0)
				{
					System.out.println("888888 Book details added successfully %%%%%%%%");
					System.out.println("------flag value from addBookDetail method of AdminDao------:" +flag);
				}
				else
					System.out.println("888888 Book Detail insertion unsuccessfull %%%%%%%%");
			}
			catch (Exception e) 
			{
				System.out.println("=====Exception in addBookDetail method of AdminDao----");
				e.printStackTrace();
			}
			finally
			{
				DbConnector.closeConnection(con, stmt, rs);
				System.out.println("Connection resources closed successfully");
			}
			
			if(flag>0)
				return true;
			else 
				return false;
			
			
		}

	  
	  public static boolean editBookDetail(int bcode,String bkname,int catcode,String lang,float price,String author,String publ,float tax,int idisc,int cdisc,String bdesc,String status)
		{
		  System.out.println("editBookDetail values +++++++++++++++"+bdesc);
			con=DbConnector.getConnection();
			int flag=0;
			String sql="";
			sql="update m_book set b_name='"+bkname+"',cat_code='"+catcode+"',b_language='"+lang+"',b_price='"+price+"',b_author='"+author+"',"+
				"b_publication='"+publ+"',b_tax='"+tax+"',b_indv_discount='"+idisc+"',b_corp_discount='"+cdisc+"',b_descr='"+bdesc+"',b_status='"+status+"' where b_code='"+bcode+"'";
			System.out.println(sql);
			try 
			{
				stmt=con.createStatement();
				flag=stmt.executeUpdate(sql);
				if(flag>0)
				{
					System.out.println("888888 Book details updated successfully %%%%%%%%");
					System.out.println("------flag value from editBookDetail method of AdminDao------:" +flag);
				}
				else
					System.out.println("888888 Book Detail updation unsuccessfull %%%%%%%%");
			}
			catch (Exception e) 
			{
				System.out.println("=====Exception in editBookDetail method of AdminDao----");
				e.printStackTrace();
			}
			finally
			{
				DbConnector.closeConnection(con, stmt, rs);
				System.out.println("Connection resources closed successfully");
			}
			
			if(flag>0)
				return true;
			else 
				return false;
			
			
		}


	public static boolean deleteBookDetail(int bCode) 
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="delete from m_book where b_code='"+bCode+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book Detail deleted successfully %%%%%%%%");
				System.out.println("------flag value from deleteBookDetail method of AdminDao------:" +flag);
			}
			else
				System.out.println("888888 Book Detail deletion unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in deleteBookDetail method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
	}

	public static boolean addBookInwardDetail(Date date,int bcode,int nBooks)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_book_inward(inw_date,b_code,no_of_books) values('"+date+"','"+bcode+"','"+nBooks+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book Inward detail added successfully %%%%%%%%");
				System.out.println("------flag value from addBookInwardDetail------:" +flag);
			}
			else
				System.out.println("888888 Book Inward Detail insertion unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in addBookInwardDetail method of AdminDao----");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
		
	}
	
	 public static boolean updateStockInBkDetail(int bcode,int numBooks)
		{
			con=DbConnector.getConnection();
			int flag=0;
			int bstock=0;
			
			String sql="";
			String sql1="";
			sql="select b_stock from m_book where b_code='"+bcode+"'";
			
			 
			System.out.println(sql);
			
			try 
			{
				stmt=con.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next())
				{
					bstock=rs.getInt(1);
					System.out.println("--------bstock from updateStockInBkDetail method in AdminDao----->>:" +bstock);
				}
				
					sql1="update m_book set b_stock=('"+bstock+"' + '"+numBooks+"') where b_code='"+bcode+"'";
					System.out.println(sql1);
					flag=stmt.executeUpdate(sql1);
					
					if(flag>0)
					{
						System.out.println("888888 stock detail updated successfully in m_book table %%%%%%%%");
						System.out.println("------flag value from updateStockInBkDetail method of AdminDao------:" +flag);
					}
					else
						System.out.println("888888 stock Detail updation unsuccessfull %%%%%%%%");
				
			}
			catch (Exception e) 
			{
				System.out.println("=====Exception in updateStockInBkDetail method of AdminDao----");
				e.printStackTrace();
			}
			finally
			{
				DbConnector.closeConnection(con, stmt, rs);
				System.out.println("Connection resources closed successfully");
			}
			
			if(flag>0)
				return true;
			else 
				return false;
			
			
		}
	 
	 
	 public static ArrayList getMcodePhoneno(int b_code)
	 {
		 con=DbConnector.getConnection();
		 ArrayList<Integer> mcodeList=new ArrayList<Integer>();
		 ArrayList mPhonenoList=new ArrayList();
		 int mcode=0;
		 String phoneno="";
		 String sql="";
		 String sql1="";
		 sql="select m_code from m_book_request where b_code='"+b_code+"' and br_status='P'";
		 System.out.println(sql);
			
			try 
			{
				stmt=con.createStatement();
				rs=stmt.executeQuery(sql);
				while(rs.next())
				{
					mcodeList.add(rs.getInt(1));
					System.out.println("+++++++mcodeList from getMcode method in AdminDao+++=:" +mcodeList);
				}
				
				System.out.println("mcodeList.size()++++++++++++++++++++++++++++"+mcodeList.size());
				
				for(int i=0;i<mcodeList.size();i++)
				{
					mcode=mcodeList.get(i);
					sql1="select m_phoneno from m_member where m_code='"+mcode+"'";
					System.out.println(sql1);
					rs3=stmt.executeQuery(sql1);
					while(rs3.next())
					{
						mPhonenoList.add(rs3.getString(1));
						System.out.println("+++++++MemphonenoList from getMcodeandPhoneno method in AdminDao+++=:" +mPhonenoList);
						
					}
				}
					
				
			}
			catch (SQLException e) 
			{
				System.out.println("====Exception in getMcodeandPhoneno method in AdminDao======");
				e.printStackTrace();
			}
		 
		 
		return mPhonenoList;
		 
	 }


	public static boolean changePwd(String adminId, String newPwd) 
	{
		
			con=DbConnector.getConnection();
			int flag=0;
			String sql="";
			sql="update m_admin set admin_pwd='"+newPwd+"' where admin_id='"+adminId+"'";
			System.out.println(sql);
			try 
			{
				stmt=con.createStatement();
				flag=stmt.executeUpdate(sql);
				if(flag>0)
				{
					System.out.println("888888 Admin password changed successfully %%%%%%%%");
					System.out.println("------flag value from changePwd in AdminDao------:" +flag);
				}
				else
					System.out.println("888888 Admin password updation unsuccessfull %%%%%%%%");
			}
			catch (Exception e) 
			{
				System.out.println("=====Exception in changePwd method of AdminDao----");
				e.printStackTrace();
			}
			finally
			{
				DbConnector.closeConnection(con, stmt, rs);
				System.out.println("Connection resources closed successfully");
			}
			
			if(flag>0)
				return true;
			else 
				return false;
			
			
		}



		
}

 
	

