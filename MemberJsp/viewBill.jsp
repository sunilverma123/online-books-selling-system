<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<%@page import="com.Member.MemberDao"%>

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Bill page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
</head>
<body>
<div align="center" Top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="100" height="80">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50"> --%>
	
<script type="text/javascript">
alert("Bill Generated Suucessfully !!! ");
</script>
			
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
			
							<table border="1" width="800px" bgcolor="white">
									<tr>
										<td colspan="9" align="center"><font color="blue" size="4px">Bill</font></td>
									</tr>
									<tr>
										<td align="center"><font color="blue" size="4px">Book Code</font></td>
										<td align="center"><font color="blue" size="4px">Price</font></td>
										<td align="center"><font color="blue" size="4px">Discount</font></td>
										<td align="center"><font color="blue" size="4px">Tax</font></td>
										<td align="center"><font color="blue" size="4px">Sale Amount</font></td>
									</tr>
									
									<%
									Connection con=null;
									Statement stmt=null;
									ResultSet rs=null;
									ResultSet rs2=null;
									String sql="";
									con=DbConnector.getConnection();
									int bill_no=0;
									String sql2="select bill_no from m_sales";
									stmt=con.createStatement();
									rs2=stmt.executeQuery(sql2);
									while(rs2.next())
									{
										bill_no=rs2.getInt(1);
									}
									System.out.println("Billllllllllllllllll nooooooooooo   "+bill_no);
									sql="select t.b_code,t.b_price,t.discount_amount,t.tax_amount,t.sale_amount from t_sales t where t.bill_no='"+bill_no+"'";
									//sql="select te.b_name,t.b_price,t.discount_amount,t.tax_amount,t.sale_amount from temp_cart te join t_sales t where te.b_code=t.b_code";
									System.out.println("Queryy is"+sql);
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									float total_price=0;
									ResultSet rs1=null;
									int mcode=0;
									String sql1="";
									String loginid=(String) session.getAttribute("loginid");
									rs1=MemberDao.getMemCode(loginid);
									
										while(rs1.next())
										{
											mcode=rs1.getInt(1);
										}
									
									
									con=DbConnector.getConnection();
									sql1="select * from temp_cart where m_code='"+mcode+"'";
									boolean b=MemberDao.deleteFromCart(mcode);
									while(rs.next())
									{
										total_price=total_price+rs.getFloat(5);
										System.out.println("----Total price value---:" +total_price);
									%>
									
										<tr>
											
											<td align="center"><font color="black"><%=rs.getString(1)%></font></td>
											<td align="center"><font color="black"><%=rs.getFloat(2)%></font></td>
											<td align="center"><font color="black"><%=rs.getFloat(3)%></font></td>
											<td align="center"><font color="black"><%=rs.getFloat(4)%></font></td>
											<td align="center"><font color="black"><%=rs.getFloat(5)%></font></td>
											
											
										</tr>
										
									 <%	
									}
								   %>
								   
								   		<tr>
											<td colspan="4" align="left"><font color="blue">Total Bill price:</font></td>
											<td align="center"><font color="black"><%=total_price%></font></td>
										</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div id="sidebar">
				<ul>
					<li>
							
						<ul>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memberHome.jsp"><font size="4px" color="orange">Home</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memViewProfile.jsp"><font size="4px" color="orange">Profile</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memSearchBooks.jsp"><font size="4px" color="orange">Search Books</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memRequestBooks.jsp"><font size="4px" color="orange">Request Books</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memBuyBooks.jsp"><font size="4px" color="orange">Buy Books</font></a></li>
							
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memChangePassword.jsp"><font size="4px" color="orange">Change Password</font></a></li>
						<li><a href="<%=request.getContextPath()%>/MemberLogoutServlet"><font color="orange">Logout</font></a></li>
									
						</ul>
					
					</li>	
				</ul>				
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>

</body>
</html>