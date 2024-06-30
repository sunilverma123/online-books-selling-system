package com.dbconnectors;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.jsp.tagext.TryCatchFinally;

public  class DbConnector 
{
		static Connection con=null;
		Statement stmt=null;
		static String username="root";
		static String password="admin";
		static String url="jdbc:mysql://localhost:3306/booksales";
		
		static
		{
			try
			{
				//registering the driver
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver Registered successfully");
			} 
			catch (ClassNotFoundException e)
			{
			e.printStackTrace();
			System.out.println("ClassNotFoundException");
			}
		}
		
		public static Connection getConnection()
		{
			try 
			{
				//getting connection
				con=DriverManager.getConnection(url,username, password);
				System.out.println("Connection established successfully");
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
				System.out.println("SQLException inside getConnection() ");
			}
			
			
			
			return con;
		}
		
		public static void closeConnection(Connection con,Statement stmt,ResultSet rs)
		{

			if(stmt!=null)
			{
				try 
				{
					stmt.close();
					stmt=null;
				} 
				catch (SQLException e) 
				{
					
					e.printStackTrace();
				}
				
			}
			
			if(rs!=null)
			{
				try 
				{
					rs.close();
					rs=null;
				} 
				catch (SQLException e) 
				{
					
					e.printStackTrace();
				}
				
			}
			
			if(con!=null)
			{
				try 
				{
					con.close();
					con=null;
				} 
				catch (SQLException e) 
				{
					
					e.printStackTrace();
				}
				
			}
			
		}		
}
