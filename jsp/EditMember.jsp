<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.dbconnectors.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EditMember page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/CorpMemberValidate.js"></script>
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
	<form action="<%=request.getContextPath()%>/EditMemServlet" method="post">
						
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
								<table width="450" height="550" bgcolor="white">
							<tr><td colspan="3" align="center"><h3>Edit Members</h3></td></tr><tr></tr>
									
									<%
										String code=request.getParameter("code");
										System.out.println("=====code value in EditMember jsp page:" +code);
										int mcode=Integer.parseInt(code);
										//request.setAttribute("mcode",code);
										Connection con=null;
										Statement stmt=null;
										ResultSet rs=null;
										String sql="";
										con=DbConnector.getConnection();
										sql="select * from m_member where m_code='"+mcode+"'";
										stmt=con.createStatement();
										rs=stmt.executeQuery(sql);
										while(rs.next())
										{
									%>
												<tr>
													<td align="center"><font color="Black">Mcode</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="mcode" value="<%=rs.getInt(1)%>" readonly="readonly"/></td>
												</tr>
										
										
												<tr>
													<td align="center"><font color="Black">Login Id</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="loginid" value="<%=rs.getString(2)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Password</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="password" name="pwd" value="<%=rs.getString(3)%>"/></td>
												</tr>
										
												<tr>
													<td align="center"><font color="Black">User Type</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="usertype" value="<%=rs.getString(4)%>" /></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Company Name</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="compname" value="<%=rs.getString(5)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Contact Name</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="name" value="<%=rs.getString(6)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Address</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="address" value="<%=rs.getString(7)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">City</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="city" value="<%=rs.getString(8)%>" /></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Pincode</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="pin" value="<%=rs.getInt(9)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Email</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="email" value="<%=rs.getString(10)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Phone No</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="pno" value="<%=rs.getString(11)%>"/></td>
												</tr>
												
												
																
												<% String status=rs.getString(12);%>
												<tr>
													<td align="center"><font color="Black">Status</font></td>
													<td><font color="Black">:</font></td>
													<td align="center">
														<select name="status">
																<option value="Active" <% if(status.equals("Active")){%>  selected="selected" <%} %>><font color="Black">Active</font></option>
																<option value="Expired" <% if(status.equals("Expired")){%>  selected="selected" <%} %>><font color="Black">Expired</font></option>
														</select>
													</td>
												</tr>	
												
												
												
											<%
												}
											%>
											
												<tr>
													<td colspan="11" align="center"></td>
												</tr>
										</table>
									
							</div>
						</div>		
					</div>
					<input type="submit" value="Edit"  onclick="return validateSignUp()"/>
					</form>

		<div id="sidebar">
					<ul>
					
						<li>
							
							<ul>
								<li><font size="4px" color="orange">Corporate Members</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/createCorpMembers.jsp"><font color="white">Create Corporate Members</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewMembers.jsp"><font color="white">View Members</font></a></li>
									</ul>
								</li>
								<li><font size="4px" color="orange">Book Category</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/addBookCatg.jsp"><font color="white">Add Book Categories</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewBookCatg.jsp"><font color="white">View Book Categories</font></a></li>
									</ul>
								</li>
								<li><font size="4px" color="orange">Book Details</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/addBookDetails.jsp"><font color="white">Add Book Details</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewBookDetails.jsp"><font color="white">View Book Details</font></a></li>
									</ul>
								</li>
								<li><font size="4px" color="orange">Book Inward Details</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/addbookInwardDetails.jsp"><font color="white">Add BookInward Details</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewbookInwardDetails.jsp"><font color="white">View BookInward Details</font></a></li>
									</ul>
								</li>
								<li><a href="<%=request.getContextPath()%>/jsp/viewSalesDetails.jsp"><font size="4px" color="orange">View Sales Details</font></a></li>
								<li><a href="<%=request.getContextPath()%>/jsp/changePassword.jsp"><font size="4px" color="orange">Change Password</font></a></li>
								<li><a href="<%=request.getContextPath()%>/LogoutServlet"><font color="orange">Logout</font></a></li>
									
							</ul>
						</li>
						
					</ul>
				</div>
		</div>
	</div>	
	
</body>
</html>