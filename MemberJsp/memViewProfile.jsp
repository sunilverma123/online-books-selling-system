<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.dbconnectors.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Member profile</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">

</head>
<body>
	<div align="center" Top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="100" height="80">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50">
 --%>
			
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				
							<a href="<%=request.getContextPath()%>/MemberJsp/memEditProfile.jsp"><font color="white" size="5px">Edit Profile</font></a>
							
							<table width="450" height="550" bgcolor="white">
							<tr><td colspan="3" align="center"><h3>Member Profile</h3></td></tr>
									
									<%
										HttpSession session2=request.getSession();
										String loginid=(String)session2.getAttribute("loginid");
										System.out.println("=====loginid value in memEditProfile jsp page:" +loginid);
										
										Connection con=null;
										Statement stmt=null;
										ResultSet rs=null;
										String sql="";
										con=DbConnector.getConnection();
										sql="select * from m_member where m_login_id='"+loginid+"'";
										stmt=con.createStatement();
										rs=stmt.executeQuery(sql);
										while(rs.next())
										{
									%>
																					
										
												<tr>
													<td align="center"><font color="black">Login Id</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(2)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Password</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(3)%></font></td>
												</tr>
										
												<tr>
													<td align="center"><font color="black">User Type</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(4)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Contact Name</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(6)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Address</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(7)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">City</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(8)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Pincode</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getInt(9)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Email</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(10)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Phone No</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(11)%></font></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Status</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><font color="black"><%=rs.getString(12)%></font></td>
												</tr>
												
															
												
												
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