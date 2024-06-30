<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Buy books page</title>
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

		<div id="wrapper">
				<div id="header-wrapper">
					<div id="header">
						<div id="logo">
								
						</div>
								<div id="menu">
										<ul>
											<li><a href="<%=request.getContextPath()%>/MemberJsp/viewCart.jsp"><font color="white">View Cart</font></a></li>
											<li><a href="<%=request.getContextPath()%>/MemberLogoutServlet"><font color="white">Logout</font></a></li>
										</ul>
								</div>
						</div>		
				</div>
		
			
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
							<table border="1" bgcolor="white" width="650px">
									<tr bordercolor="white">
										<td align="center"><font size="4px" color="blue">Book Code</font></td>
										<td align="center"><font size="4px" color="blue">Book Name</font></td>
										<td align="center"><font size="4px" color="blue">Language</font></td>
										<td align="center"><font size="4px" color="blue">Price</font></td>
										<td align="center"><font size="4px" color="blue">Author</font></td>
										<td align="center"><font size="4px" color="blue">Publication</font></td>
										<td align="center"><font size="4px" color="blue">Stock Availability</font></td>
										<td align="center"><font size="4px" color="blue">Member Discount</font></td>
										<td align="center"><font size="4px" color="blue">Corporate Discount</font></td>
										<td align="center"><font size="4px" color="blue">Add To Cart</font></td>
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
									
										<tr bordercolor="white">
											<td align="center"><font  color="black"><%=rs.getInt(1)%></font></td>
											<td align="center"><font  color="black"><%=rs.getString(2)%></font></td>
											<td align="center"><font  color="black"><%=rs.getString(4)%></font></td>
											<td align="center"><font  color="black"><%=rs.getFloat(5)%></font></td>
											<td align="center"><font  color="black"><%=rs.getString(6)%></font></td>
											<td align="center"><font  color="black"><%=rs.getString(7)%></font></td>
											
											<%
												if((rs.getInt(8))>0)
												{
											%>
												<td align="center"><font  color="black">In Stock</font></td>
												
											<%
												}
												else
												{
											%>
												<td align="center"><font  color="black">Out of Stock</font></td>
													
											<%	
												}
											%>
											
											<td align="center"><font  color="black"><%=rs.getInt(10)%></font></td>
											<td align="center"><font  color="black"><%=rs.getInt(11)%></font></td>
											<td align="center"><a href="<%=request.getContextPath()%>/AddToCartServlet?bcode=<%=rs.getInt(1)%>&bname=<%=rs.getString(2)%>&lang=<%=rs.getString(4)%>&price=<%=rs.getFloat(5)%>&author=<%=rs.getString(6)%>&publ=<%=rs.getString(7)%>&stock=<%=rs.getInt(8)%>&tax=<%=rs.getFloat(9)%>&idisc=<%=rs.getInt(10)%>&cdisc=<%=rs.getInt(11)%>">Add To Cart</a></td>
										</tr>
									 <%	
									}
								   %>
				</table>
			
						<%
								String msg5=(String)request.getAttribute("message5");
								if(msg5!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book is out of stock");
									</script>
						<%			
								}
						%>
			
			
						<%
								String msg=(String)request.getAttribute("message1");
								if(msg!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book added to cart successfully");
									</script>
						<%			
								}
								
								String msg1=(String)request.getAttribute("message2");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Sorry book is not added to cart..please try again");
									</script>
						<%			
								}	String msg3=(String)request.getAttribute("message3");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book is already in the cart");
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
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memberHome.jsp"><font size="4px" color="orange">Home</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memViewProfile.jsp"><font size="4px" color="orange">Profile</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memSearchBooks.jsp"><font size="4px" color="orange">Search Books</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memRequestBooks.jsp"><font size="4px" color="orange">Request Books</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memBuyBooks.jsp"><font size="4px" color="orange">Buy Books</font></a></li>
							
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memChangePassword.jsp"><font size="4px" color="orange">Change Password</font></a></li>
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