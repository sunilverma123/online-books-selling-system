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
<title>Edit Book category</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript">
function validate()
{
	var MyForm=document.forms[0];

	var catname=MyForm.catname;
	if(catname.value.length==0 || catname=="" || catname==null)
	{
		alert("Please enter the category name");
		catname.focus();
		return false;
	}
	
	var desc=MyForm.desc;
	if(desc.value.length==0 || desc=="" || desc==null)
	{
		alert("Please enter the Description");
		desc.focus();
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
	<form action="<%=request.getContextPath()%>/EditBookCatgServlet" method="post">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
			
						
							<table width="400" height="450" bgcolor="white">
							<tr><td colspan="3" align="center"><h3>Edit Book Categories</h3></td></tr>
									
									<%
										String code=request.getParameter("code");
										System.out.println("=====code value in editBookCatg jsp page:" +code);
										int catcode=Integer.parseInt(code);
										//request.setAttribute("mcode",code);
										Connection con=null;
										Statement stmt=null;
										ResultSet rs=null;
										String sql="";
										con=DbConnector.getConnection();
										sql="select * from m_categories where cat_code='"+catcode+"'";
										System.out.println("sql :"+sql);
										stmt=con.createStatement();
										rs=stmt.executeQuery(sql);
										while(rs.next())
										{
									%>
												<tr>
													<td align="center"><font color="Black">Code</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="catcode" value="<%=rs.getInt(1)%>" readonly="readonly"/></td>
												</tr>
										
										
												<tr>
													<td align="center"><font color="Black">Category Name</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="catname" value="<%=rs.getString(2)%>"/></td>
												</tr>
												
												<tr>
													<td align="center"><font color="Black">Description</font></td>
													<td><font color="Black">:</font></td>
													<td align="center"><input type="text" name="desc" value="<%=rs.getString(3)%>" /></td>
												</tr>
											
									<%
										}
									%>
											
												
										
							</table>
							
				</div>
			</div>
		</div>			
		<input type="submit" value="Update" onclick="return validate()"/>
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