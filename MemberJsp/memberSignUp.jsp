<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Individual-Member Sign-up page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/IndvMemberValidate.js"></script>
</head>
<body>
<div align="center" Top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="100" height="80">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50"> --%>
	

	
			
				
			
					
					</div>
							<div id="menu">
										<ul>
											<li><a href="<%=request.getContextPath()%>/index.jsp">back</a></li>
										</ul>
							</div>
					</div>		
			</div>
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
				<form action="<%=request.getContextPath()%>/IndvMemSignupServlet" method="post">
						<table width="450" height="550" bgcolor="white">
								<tr><td colspan="3" align="center"><h3>Register Here</h3></td></tr>
								<tr>
									<td align="center"><font color="Black">Login Id</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="loginid" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Password</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="password" name="pwd" /></td>
								</tr>
						
																
								<tr>
									<td align="center"><font color="Black">Contact Name</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="name" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Address</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><textarea rows="4" cols="16" name="address"></textarea>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">City</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="city" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Pincode</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="pin" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Email</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="email" 
									pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
									required="yes"/></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Phone No</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="pno" 
									pattern="[7-9]{1}[0-9]{9}"
								required="yes"/></td>
								</tr>
								
								<tr>
									<td colspan="3" align="center"><input type="submit" value="Submit" onclick="return validateSignUp()" />&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
								</tr>
								
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
		
</body>
</html>