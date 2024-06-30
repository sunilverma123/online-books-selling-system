<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin login page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/LoginValidate.js"></script>
</head>
<body><div align="center" top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="50" height="50">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50"> --%>

		<div id="wrapper">
				<div id="header-wrapper">
					<div id="header">
						<div id="logo">
								<h1> Admin Login</h1>
						</div>
								<div id="menu">
										<ul>
											<li><a href="<%=request.getContextPath()%>/index.jsp">back</a></li>
										</ul>
								</div>
					</div>		
				</div>
			<div id="page">
			
			<%
					String msg=null;
					msg=(String)request.getAttribute("status");
					
					if(msg==null)
					{
				
					}
				
					else
					{ %>
							 <font color="red"><%=request.getAttribute("status")%></font>
				<% 	
					}
					
				%>
				
				
		
				<div id="page-bgtop">
					<div id="page-bgbtm">
						<div id="sidebar">
							
										
										<form action="<%=request.getContextPath()%>/AdminLoginServlet" method="post">
											
											<table height="200" width="300" bgcolor="#aabbc" rules="none" frame="box" border="1">
												<tr><td colspan="3" align="center"><font size="5" color="blue">Login</font></td></tr><br></br>
													
													<tr>
														<td align="center"><font size="5" color="blue">Login Id</font></td>
														<td><font color="black">:</font></td>
														<td align="center"><input type="text" name="loginid" /></td>
													</tr>
													
													<tr>
														<td align="center"><font size="5" color="blue">Password</font></td>
														<td><font color="black">:</font></td>
														<td align="center"><input type="password" name="pwd" /></td>
													</tr>
													
													<tr>
														<td colspan="3" align="center"><input type="submit" value="Login" onclick="return validateLogin()" /></td>
											       </tr>
													
													
											</table>
										</form>
								
							
							<div style="clear: both;">&nbsp;</div>
						</div>
					</div>	
				
				</div>
			</div>
		</div>
</body>
</html>
