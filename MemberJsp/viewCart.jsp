<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<%@page import="com.Member.MemberDao"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Cart page</title>
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
									ResultSet rs1=null;
									int mcode=0;
									String loginid=(String) session.getAttribute("loginid");
									rs1=MemberDao.getMemCode(loginid);
									
										while(rs1.next())
										{
											mcode=rs1.getInt(1);
										}
									
									
									con=DbConnector.getConnection();
									sql="select * from temp_cart where m_code='"+mcode+"'";
									
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									
									if(rs.next())
									{
							%>
									
									<form action="<%=request.getContextPath()%>/GenerateBillservlet">
									<table border="1" width="800px" bgcolor="white">
									<tr>
										<td colspan="9" align="center"><h3>My Cart</h3></td>
									</tr>
									<tr bordercolor="white">
										<td align="center"><font color="blue" size="4px">Book Code</font></td>
										<td align="center"><font color="blue" size="4px">Book Name</font></td>
										<td align="center"><font color="blue" size="4px">Language</font></td>
										<td align="center"><font color="blue" size="4px">Price</font></td>
										<td align="center"><font color="blue" size="4px">Author</font></td>
										<td align="center"><font color="blue" size="4px">Publication</font></td>
										<td align="center"><font color="blue" size="4px">Stock Availability</font></td>
										<td align="center"><font color="blue" size="4px">Discount</font></td>
										
										<td align="center"><font color="blue" size="4px">Delete</font></td>
									
									</tr>
										
										<%
											rs.beforeFirst();
											while(rs.next())
											{
										%>
											
												<tr bordercolor="white">
													<td align="center"><font color="black" size="4px"><%=rs.getInt(2)%></font></td>
													<td align="center"><font color="black" size="4px"><%=rs.getString(3)%></font></td>
													<td align="center"><font color="black" size="4px"><%=rs.getString(4)%></font></td>
													<td align="center"><font color="black" size="4px"><%=rs.getFloat(5)%></font></td>
													<td align="center"><font color="black" size="4px"><%=rs.getString(6)%></font></td>
													<td align="center"><font color="black" size="4px"><%=rs.getString(7)%></font></td>
													
													<%
														if((rs.getInt(8))>0)
														{
													%>
														<td align="center"><font color="black" size="4px">In Stock</font></td>
														
													<%
														}
														else
														{
													%>
														<td align="center"><font color="black" size="4px">Out of Stock</font></td>
															
													<%	
														}
													%>
													
													<td align="center"><font color="black" size="4px"><%=rs.getFloat(10)%></font></td>
													<td align="center"><a href="<%=request.getContextPath()%>/DeleteFromCartServlet?bcode=<%=rs.getInt(2)%>">Delete</a></td>
												</tr>
												
											 <%	
											}
										   %>
										   
						</table>
						<div align="center">
						<br><br><br>
					
						<form action="<%=request.getContextPath()%>/GenerateBillservlet">
						<input type="radio" name="cash" value="cash" required="yes">
						<img src="<%=request.getContextPath() %>/images/Cash.png" width="100" height="50"></img>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;
							<br><br>
							<td colspan="9" align="center">
													
													<input type="submit" value="Generate Bill">
													</td>
							
							</form>
							</div>
							
						<div align="center">
						<br><br><br><br>
						<form action="<%=request.getContextPath()%>/NetAmountCal">
						<input type="submit" name="creditCard" value="Credit Card Payment">
						</form>
						</div>
						
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
<br>										   	<br><br>	
													
												
												</div>
												
												
												
												
												
												
						
												
												
												
					</form>
									<%
									
										}
										
										else
										{
									%>
											<script type="text/javascript">
													alert("Sorry there are no books added in the cart");
												
											</script>
									
									
			
						<%
										}
								String msg=(String)request.getAttribute("message1");
								if(msg!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book deleted from cart successfully");
									</script>
						<%			
								}
								
								String msg1=(String)request.getAttribute("message2");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Sorry book is not deleted from cart..please try again");
									</script>
						<%			
								}
						%>
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