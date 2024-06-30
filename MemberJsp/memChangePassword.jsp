<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Change password</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript">
function validate()
{
	var MyForm=document.forms[0];

	var oldpwd=MyForm.oldpwd;
	if(oldpwd.value.length==0 || oldpwd=="" || oldpwd==null)
	{
		alert("Please enter the old password");
		oldpwd.focus();
		return false;
	}
	
	var newpwd=MyForm.newpwd;
	if(newpwd.value.length==0 || newpwd=="" || newpwd==null)
	{
		alert("Please enter the new password");
		newpwd.focus();
		return false;
	}

	var re_newpwd=MyForm.re_newpwd;
	if(re_newpwd.value.length==0 || re_newpwd=="" || re_newpwd==null)
	{
		alert("Please re-enter the new password");
		re_newpwd.focus();
		return false;
	}
	
	else
		return true;
}

</script>
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
			
						<form action="<%=request.getContextPath()%>/MemChangePasswordServlet" method="post">
							<table width="400" height="450" bgcolor="white">
							<tr><td colspan="3" align="center"><h3>Change Password</h3></td></tr>
									
									<%
										String loginid="";
										
										HttpSession session2=request.getSession();
										loginid=(String)session2.getAttribute("loginid");
										System.out.println("========loginid retrieved from session=======:" +loginid); 
										
									%>
												<tr>
													<td align="center"><font color="black">Login id</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><input type="text" name="loginid" value="<%=loginid%>" readonly="readonly"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Enter Old Password</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><input type="password" name="oldpwd"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Enter New Password</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><input type="password" name="newpwd"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="black">Re-enter New Password</font></td>
													<td><font color="black">:</font></td>
													<td align="center"><input type="password" name="re_newpwd"/></td>
												</tr>
												
												<tr>
													<td colspan="4" align="center"><input type="submit" value="Submit" onclick="return validate()"></td>
												</tr>
												
											</table>
										</form>
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