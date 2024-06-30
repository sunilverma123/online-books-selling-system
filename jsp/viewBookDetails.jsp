<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<html>
<head>
<meta type="text/css; charset=utf-8" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Book Details</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
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
						<table border="1" bgcolor="white" width="800px">
								<tr><td colspan="14" align="center"><h3> Book Details </h3></td></tr>
								
								<tr>
									<td align="center"><font color="Black">code</font></td>
									<td align="center"><font color="Black">Book Name</font></td>
									<td align="center"><font color="Black">Category code</font></td>
									<td align="center"><font color="Black">Language</font></td>
									<td align="center"><font color="Black">Price</font></td>
									<td align="center"><font color="Black">Author</font></td>
									<td align="center"><font color="Black">Publication</font></td>
									<td align="center"><font color="Black">Stock</font></td>
									<td align="center"><font color="Black">Tax</font></td>
									<td align="center"><font color="Black">Individual Discount</font></td>
									<td align="center"><font color="Black">Corporate Discount</font></td>
										<td align="center"><font color="Black">Book Description</font></td>
									<td align="center"><font color="Black">Status</font></td>
									<td colspan="2" align="center"><font color="Black">Edit/Delete</font></td>
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
											<td align="center"><font color="Black"><%=rs.getInt(1)%></font></td>
											<td align="center"><font color="Black"><%=rs.getString(2)%></font></td>
											<td align="center"><font color="Black"><%=rs.getInt(3)%></font></td>
											<td align="center"><font color="Black"><%=rs.getString(4)%></font></td>
											<td align="center"><font color="Black"><%=rs.getFloat(5)%></font></td>
											<td align="center"><font color="Black"><%=rs.getString(6)%></font></td>
											<td align="center"><font color="Black"><%=rs.getString(7)%></font></td>
											<td align="center"><font color="Black"><%=rs.getInt(8)%></font></td>
											<td align="center"><font color="Black"><%=rs.getFloat(9)%></font></td>
											<td align="center"><font color="Black"><%=rs.getInt(10)%></font></td>
											<td align="center"><font color="Black"><%=rs.getInt(11)%></font></td>
											<td align="center"><font color="Black"><%=rs.getString(12)%></font></td>
											<td align="center"><font color="Black"><%=rs.getString(13)%></font></td>
											<td align="center"><a href="<%=request.getContextPath()%>/jsp/editBookDetail.jsp?code=<%=rs.getInt(1)%>"><font color="Black">Edit</font></a></td>
											<td align="center"><a href="<%=request.getContextPath()%>/DeleteBookDetailServlet?code1=<%=rs.getInt(1)%>"><font color="Black">Delete</font></a></td>
										</tr>
									 <%	
									}
								   %>
						</table>
				 
			
						<%
								String msg=(String)request.getAttribute("message1");
								if(msg!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book Detail updated successfully");
									</script>
						<%			
								}
						
						
						%>
						
						
						<%
								String msg1=(String)request.getAttribute("message2");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book detail deleted successfully");
									</script>
						<%			
								}
						
						
						%>
						
						
						<%
								String msg2=(String)request.getAttribute("message3");
								if(msg2!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book detail deletion unsuccessfull");
									</script>
						<%			
								}
						
						
						%>
				
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