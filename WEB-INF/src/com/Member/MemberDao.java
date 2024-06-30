package com.Member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.Aes.AES_Algorithm;
import com.dbconnectors.DbConnector;



public class MemberDao 
{
	static Connection con=null;
	static Statement stmt=null;
	static ResultSet rs=null;
	static ResultSet rs1=null;
	
	public static boolean createIndvMember(String login_id,String pwd,String name,String address,String city,int pin,String email,String phno)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_member(m_login_id,m_password,m_contact_name,m_address,m_city,m_pincode,m_emailid,m_phoneno)" +
				"values('"+login_id+"','"+pwd+"','"+name+"','"+address+"','"+city+"','"+pin+"','"+email+"','"+phno+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Individual member created successfully %%%%%%%%");
				System.out.println("------flag value from createIndvMember------:" +flag);
			}
			else
				System.out.println("888888 Individual member creation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in createIndvMember method of MemberDao----");
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
	
	public static boolean checkIndvMember(String loginid,String password)
	{
		con=DbConnector.getConnection();
		boolean flag=false;
		String password2="";
		String sql="";
		try
		{
			password2 = AES_Algorithm.encrypt(password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		sql="select * from m_member where m_login_id='"+loginid+"' and m_password='"+password2+"'";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			flag=rs.next();
			if(flag)
			{
				System.out.println("-----flag value from checkIndvMember method in MemberDao: " +flag);
				System.out.println("+++==Row exists++++");
			}
			else
			{
				System.out.println("row does not exist");
			}
			
			
		} 
		catch (SQLException e) 
		{
			System.out.println("exception in checkIndvMember of MemberDao");
			e.printStackTrace();
		}
		finally
		{
			DbConnector.closeConnection(con, stmt, rs);
			System.out.println("Connection resources closed successfully");
		}
		
		if(flag)
			return true;
		
		else
			return false;
		
	}

	public static boolean editMember(String sess_loginid,String loginid, String pwd, String name,String address, String city, int pin, String email, String phoneno) 
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="update m_member set m_login_id='"+loginid+"',m_password='"+pwd+"',"+
			"m_contact_name='"+name+"',m_address='"+address+"',"+
			"m_city='"+city+"',m_pincode='"+pin+"',m_emailid='"+email+"',m_phoneno='"+phoneno+"' where m_login_id='"+sess_loginid+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Individual user updated successfully %%%%%%%%");
				System.out.println("------flag value from editMember------:" +flag);
			}
			else
				System.out.println("888888 Individual user updation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in editMember method of MemberDao----");
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
	
	public static ResultSet searchBook(String bkname)
	{
		bkname.toUpperCase();
		con=DbConnector.getConnection();
		boolean flag=false;
		String sql="";
		sql="select b_name,b_language,b_price,b_author,b_publication,b_stock from m_book where b_name like '"+bkname+"%' ";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
			/*while(rs.next())
			{
				System.out.println("book name:" +rs.getString(1));
				System.out.println("book language:" +rs.getString(2));
				System.out.println("book price:" +rs.getFloat(3));
				System.out.println("book author:" +rs.getString(4));
				System.out.println("publication:" +rs.getString(5));
				System.out.println("stock:" +rs.getInt(6));
			}*/
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in searchBook method of MemberDao=====");
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	public static ResultSet getMemCode(String loginid)
	{
		con=DbConnector.getConnection();
		String sql="";
		sql="select m_code,m_user_type from m_member where m_login_id='"+loginid+"' ";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getMemCode method of MemberDao=====");
			e.printStackTrace();
		}
		
		return rs;
		
	}
	public static String getMem_encrypass(String loginid)
	{String e_pass="";
		con=DbConnector.getConnection();
		String sql="";
		sql="select m_password from m_member where m_login_id='"+loginid+"' ";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next())
					{
				      e_pass=rs.getString(1);
					}
					
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getMemCode method of MemberDao=====");
			e.printStackTrace();
		}
		
		return e_pass;
		
	}
	public static boolean memBookRequest(Date sqlDate, int mcode, int bcode) 
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_book_request(br_date,m_code,b_code)" +
				"values('"+sqlDate+"','"+mcode+"','"+bcode+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 member book request inserted successfully %%%%%%%%");
				System.out.println("------flag value from memBookRequest------:" +flag);
			}
			else
				System.out.println("888888  member book request insertion unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in memBookRequest method of MemberDao----");
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
	
	public static boolean addToCart(int mcode,int bcode,String bname,String blanguage,float price,String author,String publication,int stock,float tax,float discount)
	{
		con=DbConnector.getConnection();
		int flag=0;
		
		String sql="";
		sql="insert into temp_cart(m_code,b_code,b_name,b_language,b_price,b_author,b_publication,b_stock,b_tax,b_discount)" +
				"values('"+mcode+"','"+bcode+"','"+bname+"','"+blanguage+"','"+price+"','"+author+"','"+publication+"','"+stock+"','"+tax+"','"+discount+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 1 row added to m_cart successfully %%%%%%%%");
				System.out.println("------flag value from addToCart------:" +flag);
			}
			else
				System.out.println("888888 row addition to m_cart unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in addToCart method of MemberDao----");
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
	
	public static boolean deleteFromCart(int m_code)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="delete from temp_cart where m_code='"+m_code+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book deleted from cart successfully %%%%%%%%");
				System.out.println("------flag value from deleteFromCart------:" +flag);
			}
			else
				System.out.println("888888 Book  deletion from cart unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in deleteFromCart method of MemberDao----");
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
	
	public static boolean singledeleteFromCart(int b_code)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="delete from temp_cart where b_code='"+b_code+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Book deleted from cart successfully %%%%%%%%");
				System.out.println("------flag value from deleteFromCart------:" +flag);
			}
			else
				System.out.println("888888 Book  deletion from cart unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in deleteFromCart method of MemberDao----");
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
	
	public static ResultSet getTempCart(int m_code)
	{
		con=DbConnector.getConnection();
		String sql="";
		sql="select * from temp_cart where m_code='"+m_code+"'";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getTempCart method of MemberDao=====");
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	
	public static int getBookStock(int b_code)
	{
		int numOfBook=0;
		con=DbConnector.getConnection();
		String sql="";
		sql="select b_stock from m_book where b_code='"+b_code+"'";
		System.out.println(sql);
		
		try
		{
			
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
			if(rs.next())
			{
				numOfBook = rs.getInt(1);
			}
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getTempCart method of MemberDao=====");
			e.printStackTrace();
		}
		
		return numOfBook;
		
	}
	
	
	public static boolean updateBookStock(int b_code, int numberOfBook)
	{
		boolean flag=false;
		int i = 0;
		con=DbConnector.getConnection();
		String sql="";
		sql="update m_book set b_stock='"+numberOfBook+"' where b_code='"+b_code+"'";
		/*sql="select * from temp_cart where m_code='"+m_code+"'";*/
		System.out.println(sql);
		
		try {
			stmt=con.createStatement();
		
		
				i=stmt.executeUpdate(sql);
			
			
			if(i!=0)
			{
				flag = true;
			}
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getTempCart method of MemberDao=====");
			e.printStackTrace();
		}
		
		return flag;
		
	}
	
	
	
	
	
	
	public static boolean insertToMsales(Date billDate,int mcode,float totalCost,float discCost,float tax,float netAmount)
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="insert into m_sales(bill_date,m_code,total_cost,discount_cost,tax_amount,net_amount)" +
				"values('"+billDate+"','"+mcode+"','"+totalCost+"','"+discCost+"','"+tax+"','"+netAmount+"')";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 1 row added to m_sales successfully %%%%%%%%");
				System.out.println("------flag value from insertToMsales------:" +flag);
			}
			else
				System.out.println("888888 row addition to m_sales unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in insertToMsales method of MemberDao----");
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
	
	
	public static ResultSet getBillDetails()
	{
		con=DbConnector.getConnection();
		String sql="";
		sql="select m.bill_no,t.b_code,t.b_price,t.b_tax,t.b_discount from m_sales m join temp_cart t where m.m_code=t.m_code";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getTempCart method of MemberDao=====");
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	public static boolean insertToTsales()
	{
		con=DbConnector.getConnection();
		int flag=0;
		rs1=MemberDao.getBillDetails();
		ArrayList billNoList=new ArrayList();
		ArrayList bcodeList=new ArrayList();
		ArrayList<Float> bpriceList=new ArrayList<Float>();
		ArrayList<Float> discAmtList=new ArrayList<Float>();
		ArrayList<Float> taxList=new ArrayList<Float>();
		
		try
		{
			while(rs1.next())
			{
				billNoList.add(rs1.getInt(1));
				bcodeList.add(rs1.getInt(2));
				bpriceList.add(rs1.getFloat(3));
				taxList.add(rs1.getFloat(4));
				discAmtList.add(rs1.getFloat(5));
				
			}
		} 
		catch (SQLException e1)
		{
			System.out.println("===Exception in insertToSales====");
			e1.printStackTrace();
		}
		
		System.out.println("----billNoList---:" +billNoList);
		System.out.println("----bCodeList---:"+bcodeList);
		System.out.println("----bPriceList---:"+bpriceList);
		System.out.println("----taxList---:"+taxList);
		System.out.println("----discAmtList---:"+discAmtList);
		
		float saleAmount=0;
		float priceAmt=0;
		float discAmt=0;
		float taxAmt=0;
		
		
		for(int i=0;i<billNoList.size();i++)
		{
			priceAmt=bpriceList.get(i);
			taxAmt=taxList.get(i);
			discAmt=discAmtList.get(i);
			saleAmount=(priceAmt-discAmt)+taxAmt;
			System.out.println("--priceAmt--:" +priceAmt);
			System.out.println("--taxAmt--:" +taxAmt);
			System.out.println("--discAmt--:" +discAmt);
			System.out.println("--saleAmt i.e (priceAmt-discAmt)+taxAmt--:" +saleAmount);
			
			
			String sql="";
			sql="insert into t_sales(bill_no,b_code,b_price,discount_amount,tax_amount,sale_amount)" +
					"values('"+billNoList.get(i)+"','"+bcodeList.get(i)+"','"+bpriceList.get(i)+"','"+discAmtList.get(i)+"','"+taxList.get(i)+"','"+saleAmount+"')";
			System.out.println(sql);
			try 
			{
				stmt=con.createStatement();
				flag=stmt.executeUpdate(sql);
				if(flag>0)
				{
					System.out.println("888888 1 row added to t_sales successfully %%%%%%%%");
					System.out.println("------flag value from insertToTsales------:" +flag);
				}
				else
					System.out.println("888888 row addition to t_sales unsuccessfull %%%%%%%%");
			}
			catch (Exception e) 
			{
				System.out.println("=====Exception in insertToTsales method of MemberDao----");
				e.printStackTrace();
			}
		}
		
		if(flag>0)
			return true;
		else 
			return false;
		
	}

	public static boolean changePwd(String loginid, String reNewPwd) 
	{
		con=DbConnector.getConnection();
		int flag=0;
		String sql="";
		sql="update m_member set m_password='"+reNewPwd+"' where m_login_id='"+loginid+"'";
		System.out.println(sql);
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			if(flag>0)
			{
				System.out.println("888888 Member password changed successfully %%%%%%%%");
				System.out.println("------flag value from changePwd in MemberDao------:" +flag);
			}
			else
				System.out.println("888888 Member password updation unsuccessfull %%%%%%%%");
		}
		catch (Exception e) 
		{
			System.out.println("=====Exception in changePwd method of MemberDao----");
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
	

	public static ResultSet getTransactionBkDetails(int mcode)
	{
		con=DbConnector.getConnection();
		String sql="";
		ArrayList mcodeList=new ArrayList();
		rs1=MemberDao.getBillnoBillDate(mcode);
		
		try 
		{
			while(rs1.next())
			{
				mcodeList.add(1);
			}
			
			for(int i=0;i<mcodeList.size();i++)
			{
				sql="select t.bill_no,t.b_code,b.b_name,b.b_language,b.b_author,b.b_publication,b.b_price,t.discount_amount,t.tax_amount,t.sale_amount from t_sales t join m_book b where t.bill_no='"+mcodeList.get(i)+"' and t.b_code=b.b_code";
				System.out.println(sql);
				stmt=con.createStatement();
				rs=stmt.executeQuery(sql);
			
			}
			
		} 
		catch (SQLException e1) 
		{

			System.out.println("=======Exception in getTransactionBkDetails method of MemberDao=====");
			e1.printStackTrace();
		}
		
		
		
		return rs;
		
	}
	
	public static ResultSet getBillnoBillDate(int mcode)
	{
		con=DbConnector.getConnection();
		String sql="";
		sql="select bill_no,bill_date from m_sales where m_code='"+mcode+"'";
		System.out.println(sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getBillnoBillDate method of MemberDao=====");
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	
	public static boolean deleteTempCart()
	{
		con=DbConnector.getConnection();
		String sql="";
		sql="delete from temp_cart";
		int flag=0;
		
		
		try 
		{
			stmt=con.createStatement();
			flag=stmt.executeUpdate(sql);
			System.out.println("flag from deleteTempCart() in MemberDao:" +flag);
		} 
		catch (SQLException e) 
		{
			System.out.println("exception in deleteTempCart in MemberDao");
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
	
	
	public static ResultSet CHK(int m_code)
	{
		con=DbConnector.getConnection();
		String sql="";
		sql="select * from temp_cart where m_code='"+m_code+"' ";
		System.out.println("getb_code sql iss  "+sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getMemCode method of MemberDao=====");
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	
	public static boolean getb_code(int b_code,int m_code)
	{	
		boolean flag=false;
		con=DbConnector.getConnection();
		String sql="";
		sql="select b_code from temp_cart where b_code='"+b_code+"' and m_code='"+m_code+"' ";
		System.out.println("get b_code sql iss  "+sql);
		
		try
		{
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			flag=(rs.next());
			if(flag)
			{
				System.out.println("-----flag value from getb_code method in MemberDao: " +flag);
				System.out.println("+++==Row exists++++");
			}
			else
			{
				System.out.println("row does not exist");
			}
		}
		catch (SQLException e)
		{
			System.out.println("=======Exception in getMemCode method of MemberDao=====");
			e.printStackTrace();
		}
		
		if(flag)
			return true;
		
		else
			return false;
		
	}
	
}
