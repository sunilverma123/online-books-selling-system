<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>
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
		<%-- <div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
			
				<form action="<%=request.getContextPath()%>/CreateCorpMemServlet" method="post">
						<table width="450" height="550" bgcolor="white">
								<tr><td colspan="3" align="center"><font color="black">Create Corporate Members</font></td></tr><tr>
								<tr>
									<td align="center"><font color="black">Login Id</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="loginid" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Password</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="password" name="pwd" /></td>
								</tr>
						
								<tr>
									<td align="center"><font color="black">User Type</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="radio" name="usertype" value="C" checked="checked"/><font color="black">Corporate</font>
										<input type="radio" name="usertype" value="I" /><font color="black">Individual</font>
									</td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Company Name</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="compname" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Contact Name</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="name" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Address</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><textarea rows="4" cols="16" name="address"></textarea>
								</tr>
								
								<tr>
									<td align="center"><font color="black">City</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="city" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Pincode</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="pin" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Email</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="email" 
									pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
									required="yes"/></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Phone No</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="pno" 
									pattern="[7-9]{1}[0-9]{9}"
								required="yes"/></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Status</font></td>
									<td><font color="black">:</font></td>
									<td align="center">
									<select name="status">
											<option>Active</option>
											<option>Expired</option>
									</select>
									</td>
								</tr>
								
								<tr>
									<td colspan="3" align="center"><input type="submit" value="Create" onclick="return validateSignUp()"/></td>
								</tr>
								
						</table>
				</form>
		
			</div>
		
		</div>
		
	</div>	 --%>
	
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
				</div>>
		
	</div>
	</div>	
</body>
</html>