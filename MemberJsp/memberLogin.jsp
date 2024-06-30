<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member login page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/LoginValidate.js"></script>
</head>
<body>
<div align="center" Top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="100" height="80">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50"> --%>

							<div id="menu">
										<ul>
											<li><a href="<%=request.getContextPath()%>/index.jsp">back</a></li>
										</ul>
							</div>
	
		<div id="wrapper">
			<div id="header-wrapper">
				<div id="header">
					<div id="logo">
							<h1> Online BookStore</h1>
					</div>
							<div id="menu">
									
							</div>
					</div>		
			</div>
					
			
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="sidebar">
				<form action="<%=request.getContextPath()%>/IndvMemberLoginServlet" method="post">
					
					<table height="450" width="300" bgcolor="white">
						<tr><td colspan="3" align="center"><font size="5" color="blue">Login</font></td></tr><br></br>
							
							<tr>
								<td align="center"><font color="Black">Login id</font></td>
								<td><font color="Black">:</font></td>
								<td align="center"><input type="text" name="loginid" /></td>
							</tr>
							
							<tr>
								<td align="center"><font color="Black">Password</font></td>
								<td><font color="Black">:</font></td>
								<td align="center"><input type="password" name="pwd" /></td>
							</tr>
							
							<tr>
								<td colspan="3" align="center"><input type="submit" value="Login" onclick="return validateLogin()" /></td>
					       </tr>
							
							
					</table>
				</form>
				
				<br></br>
		
				<%
					String msg=null;
					msg=(String)request.getAttribute("status");
					
					if(msg==null)
					{
				
					}
				
					else
					{ %>
					
					<script type="text/javascript">
										alert("Sorry member password not matching please try again");
									</script>
					
					
						
				<% 	
					}
					
				%>
				
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>