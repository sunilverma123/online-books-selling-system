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
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">

<title>Member home page</title>
</head>
<body>
<div align="center" Top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="100" height="80">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50"> --%>
	
		<!--<div id="wrapper">
				<div id="header-wrapper">
					<div id="header">
						<div id="logo">
								
						</div>
								<div id="menu">
										<ul>
											</ul>
								</div>
					</div>		
				</div>
			
	--><div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
							<table width="600px" cellpadding="2" cellspacing="2">
									<tr><td colspan="9" align="center"><h3><font color="white">Available Books</font></h3></td></tr>
									<tr>
										<td align="center"><h4><font color="white">Book Code</font></h4></td>
										<td align="center"><h4><font color="white">Book Name</font></h4></td>
										<td align="center"><h4><font color="white">Language</font></h4></td>
										<td align="center"><h4><font color="white">Price</font></h4></td>
										<td align="center"><h4><font color="white">Author</font></h4></td>
										<td align="center"><h4><font color="white">Publication</font></h4></td>
										<td align="center"><h4><font color="white">Stock Availability</font></h4></td>
										<td align="center"><h4><font color="white">Member Discount</font></h4></td>
										<td align="center"><h4><font color="white">Corporate Discount</font></h4></td>
										
									</tr>
									
									<%
									Connection con=null;
									Statement stmt=null;
									ResultSet rs=null;
									String sql="";
									con=DbConnector.getConnection();
									sql="select * from m_book";
									
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									
									while(rs.next())
									{
									%>
									
										<tr>
											<td align="center"><font  color="white"><%=rs.getInt(1)%></font></td>
											<td align="center"><font  color="white"><%=rs.getString(2)%></font></td>
											<td align="center"><font  color="white"><%=rs.getString(4)%></font></td>
											<td align="center"><font  color="white"><%=rs.getFloat(5)%></font></td>
											<td align="center"><font  color="white"><%=rs.getString(6)%></font></td>
											<td align="center"><font  color="white"><%=rs.getString(7)%></font></td>
											
											<%
												if((rs.getInt(8))>0)
												{
											%>
												<td align="center"><font  color="white">In Stock</font></td>
												
											<%
												}
												else
												{
											%>
												<td align="center"><font  color="white">Out of Stock</font></td>
													
											<%	
												}
											%>
											
											<td align="center"><font  color="white"><%=rs.getInt(10)%></font></td>
											<td align="center"><font  color="white"><%=rs.getInt(11)%></font></td>
											
											
										</tr>
									 <%	
									}
								   %>
				</table>
			
			</div>
				
			<div id="sidebar">
				<br></br>
				<br></br>
				<ul>
					<li>
							
						<ul>
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
	</div>
</div>
		
				
						<%
								String msg=(String)request.getAttribute("message");
								if(msg!=null)
								{
						%>
									<script type="text/javascript">
										alert("Member profile updated successfully");
									</script>
						<%			
								}
								
								String msg1=(String)request.getAttribute("message1");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Member password updated successfully");
									</script>
						<%			
								}
						%>
</body>
</html>