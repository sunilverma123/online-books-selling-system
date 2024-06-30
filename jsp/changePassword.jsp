<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Change password</title>
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
			
						<form action="<%=request.getContextPath()%>/ChangePasswordServlet" method="post">
							<table width="400" height="450" bgcolor="white">
							<tr><td colspan="3" align="center"><h3>Change Password</h3></td></tr>
									
									<%
										String admin_id="";
										
										HttpSession session2=request.getSession();
										admin_id=(String)session2.getAttribute("admin_id");
										System.out.println("========admin_id retrieved from session=======:" +admin_id); 
										
									%>
												<tr>
													<td align="center"><font color="Black">Admin_id</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="adminid" value="<%=admin_id%>" readonly="readonly"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Enter Old Password</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="password" name="oldpwd"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Enter New Password</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="password" name="newpwd"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Re-enter New Password</font></td>
													<td><font color="Black">:</font></td>
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