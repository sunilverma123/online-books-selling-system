<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home page</title>
<link  rel="stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
</head>
<body>
<div align="center" top="10">
<img src="<%=request.getContextPath() %>/images/images (10).jpg" width="50" height="50">

<img src="<%=request.getContextPath() %>/images/Red.png" width="900" height="75"></img>

</div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%-- <font size="5" color="orange">SMS Alert..</font><img src="<%=request.getContextPath() %>/images/download (2).jpg" width="50" height="50"> --%>

		<!--<div id="wrapper">
				<div id="header-wrapper">
					<div id="header">
							<div id="logo">
								
							</div>
								<div id="menu">
										<ul>
											<li><a href="<%=request.getContextPath()%>/LogoutServlet"><font color="white">Logout</font></a></li>
										</ul>
								</div>
					</div>		
				</div>
		
		--><br></br>
		<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				
				
				<div id="sidebar">
					<ul>
						
						<li>
							
							<ul>
								<li><font size="4px" color="Orange">Corporate Members</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/createCorpMembers.jsp"><font color="white">Create Corporate Members</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewMembers.jsp"><font color="white">View Members</font></a></li>
									</ul>
								</li>
								<li><font size="4px" color="Orange">Book Category</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/addBookCatg.jsp"><font color="white">Add Book Categories</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewBookCatg.jsp"><font color="white">View Book Categories</font></a></li>
									</ul>
								</li>
								<li><font size="4px" color="Orange">Book Details</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/addBookDetails.jsp"><font color="white">Add Book Details</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewBookDetails.jsp"><font color="white">View Book Details</font></a></li>
									</ul>
								</li>
								<li><font size="4px" color="Orange">Book Inward Details</font>
									<ul>
										<li><a href="<%=request.getContextPath()%>/jsp/addbookInwardDetails.jsp"><font color="white">Add BookInward Details</font></a></li>
										<li><a href="<%=request.getContextPath()%>/jsp/viewbookInwardDetails.jsp"><font color="white">View BookInward Details</font></a></li>
									</ul>
								</li>
								<li><a href="<%=request.getContextPath()%>/jsp/viewSalesDetails.jsp"><font size="4px" color="Orange">View Sales Details</font></a></li>
								<li><a href="<%=request.getContextPath()%>/jsp/changePassword.jsp"><font size="4px" color="Orange">Change Password</font></a></li>
							<li><a href="<%=request.getContextPath()%>/LogoutServlet"><font color="Orange">Logout</font></a></li>
									
							</ul>
						</li>
						
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
						<%
													
								String msg1=(String)request.getAttribute("message1");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Admin Password changed successfully");
									</script>
						<%			
								}
						
								String msg2=(String)request.getAttribute("corpMessage");
								if(msg2!=null)
								{
						%>
									<script type="text/javascript">
										alert("Corporate Member created successfully");
									</script>
						<%			
								}
						
								String msg3=(String)request.getAttribute("bookMessage");
								if(msg3!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book Category added successfully");
									</script>
						<%			
								}
						

								String msg4=(String)request.getAttribute("bkdetMessage");
								if(msg4!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book Detail added successfully");
									</script>
						<%			
								}
								
								String msg5=(String)request.getAttribute("bkiwMessage");
								if(msg5!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book Inward detail added successfully and stock detail updated in book table, and sms sent to requested users");
									</script>
						<%			
								}
								
								String msg6=(String)request.getAttribute("bkiwMessage1");
								if(msg6!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book Inward detail added successfully and stock detail updated in book table,no members who requested for this book");
									</script>
						<%			
								}
						%>
				
						
						
					
					
				
		
		</div>

</body>
</html>