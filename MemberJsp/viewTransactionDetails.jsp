<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<html>
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

			
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
			
									
									<%
									Connection con=null;
									Statement stmt=null;
									ResultSet rs=null;
									String sql="";
									con=DbConnector.getConnection();
									sql="select te.b_code,te.b_name,te.b_language,te.b_author,te.b_publication,t.b_price,t.discount_amount,t.tax_amount,t.sale_amount,m.bill_date from temp_cart te join t_sales t join m_sales m where te.b_code=t.b_code and t.bill_no=m.bill_no";
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									//float total_price=0;
									
									if(rs.next())
									{
									%>
										<table border="1" width="900px" bgcolor="white">
										<tr>
											<td colspan="10" align="center"><font size="4px">Transaction Book Details</font></td>
										</tr>
										<tr bordercolor="white">
											<td align="center"><font color="blue" size="4px">Book Code</font></td>
											<td align="center"><font color="blue" size="4px">Name</font></td>
											<td align="center"><font color="blue" size="4px">Language</font></td>
											<td align="center"><font color="blue" size="4px">Author</font></td>
											<td align="center"><font color="blue" size="4px">Publication</font></td>
											<td align="center"><font color="blue" size="4px">Price</font></td>
											<td align="center"><font color="blue" size="4px">Discount</font></td>
											<td align="center"><font color="blue" size="4px">Tax</font></td>
											<td align="center"><font color="blue" size="4px">Sale Amount</font></td>
											<td align="center"><font color="blue" size="4px">Bill Date</font></td>
										</tr>
									
									<%
										rs.beforeFirst();
											while(rs.next())
											{
												
											%>
											
												<tr bordercolor="white">
													
													<td align="center"><font color="black"><%=rs.getInt(1)%></font></td>
													<td align="center"><font color="black"><%=rs.getString(2)%></font></td>
													<td align="center"><font color="black"><%=rs.getString(3)%></font></td>
													<td align="center"><font color="black"><%=rs.getString(4)%></font></td>
													<td align="center"><font color="black"><%=rs.getString(5)%></font></td>
													<td align="center"><font color="black"><%=rs.getFloat(6)%></font></td>
													<td align="center"><font color="black"><%=rs.getFloat(7)%></font></td>
													<td align="center"><font color="black"><%=rs.getFloat(8)%></font></td>
													<td align="center"><font color="black"><%=rs.getFloat(9)%></font></td>
													<td align="center"><font color="black"><%=rs.getDate(10)%></font></td>
													
													
												</tr>
												
											 <%	
											}
									}
									
									else
									{
								%>
									<script type="text/javascript">
											alert("Sorry there are no transaction book details");
										
									</script>
								
								<%	
									}
							    %>
								   
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
							<li><a href="<%=request.getContextPath()%>/MemberJsp/viewTransactionDetails.jsp"><font size="4px" color="orange">Transaction Book details</font></a></li>
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