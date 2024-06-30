<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">

<title>Member search books page</title>
<script type="text/javascript">
function validate()
{
	var MyForm=document.forms[0];
	var bkname=MyForm.bkname;
	if(bkname.value.length==0 || bkname=="" || bkname==null)
	{
		alert("Please enter the book name");
		bkname.focus();
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
						<form action="<%=request.getContextPath()%>/WelcomePageSearchBookServlet" method="get">
						<table border="1">
								<tr>
									<td>
										<input type="text" name="bkname" size="40px">
									</td>
									<td><input type="submit" value="Search" onclick="return validate()"></td>
								</tr>
						</table>
					</form>
			<br></br>
			
			
					
					<%	
							boolean flag=false;
							ArrayList bknameList=new ArrayList();
							ArrayList bklangList=new ArrayList();
							ArrayList bkpriceList=new ArrayList();
							ArrayList authorList=new ArrayList();
							ArrayList publList=new ArrayList();
							ArrayList<Integer> stockList=new ArrayList<Integer>();
							
							bknameList=(ArrayList)request.getAttribute("bknameList");
							bklangList=(ArrayList)request.getAttribute("bklangList");
							bkpriceList=(ArrayList)request.getAttribute("bkpriceList");
							authorList=(ArrayList)request.getAttribute("authorList");
							publList=(ArrayList)request.getAttribute("publList");
							stockList=(ArrayList)request.getAttribute("stockList");
							System.out.println("====bknameList,bklangList,bkpriceList,authorList,publList,stockList--:" +bknameList+""+bklangList+""+bkpriceList+""+authorList+""+publList+""+stockList);
							
									
							if(bknameList!=null)
							{
								
						%>
								<table border="1" width="700px" bgcolor="white">
									<tr>
										<td align="center"><font size="4px" color="blue">Book Name</font></td>
										<td align="center"><font size="4px" color="blue">Language</font></td>
										<td align="center"><font size="4px" color="blue">Price</font></td>
										<td align="center"><font size="4px" color="blue">Author</font></td>
										<td align="center"><font size="4px" color="blue">Publication</font></td>
										<td align="center"><font size="4px" color="blue">Stock Availability</font></td>
									</tr>
									
										<%
											for(int i=0;i<bknameList.size();i++)
											{
										
										%>
											<tr>
												<td align="center"><font color="black" size="4px"><%=bknameList.get(i)%></font></td>
												<td align="center"><font color="black" size="4px"><%=bklangList.get(i)%></font></td>
												<td align="center"><font color="black" size="4px"><%=bkpriceList.get(i)%></font></td>
												<td align="center"><font color="black" size="4px"><%=authorList.get(i)%></font></td>
												<td align="center"><font color="black" size="4px"><%=publList.get(i)%></font></td>
												
											<%
												if((stockList.get(i))>0)
												{
											%>
												<td align="center"><font color="black" size="4px">In Stock</font></td>
												
											<%
												}
												else
												{
											%>
												<td align="center"><font color="black" size="4px">Out of Stock</font></td>
													
											<%	
												}
											%>
											
											</tr>
									
									<%		
											}
					                 %>
					                 
					                 </table>
						
					<%	
							}
					     
							String msg=(String)request.getAttribute("message");
							if(msg!=null)
							{
					%>
								<script type="text/javascript">
									alert("book is not available");
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
							<li><a href="<%=request.getContextPath()%>/index.jsp"><font size="4px" color="orange">Home</font></a></li>
							<%-- <li><a href="<%=request.getContextPath()%>/MemberJsp/memViewProfile.jsp"><font size="4px" color="orange">Profile</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memSearchBooks.jsp"><font size="4px" color="orange">Search Books</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memRequestBooks.jsp"><font size="4px" color="orange">Request Books</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memBuyBooks.jsp"><font size="4px" color="orange">Buy Books</font></a></li>
							
							<li><a href="<%=request.getContextPath()%>/MemberJsp/memChangePassword.jsp"><font size="4px" color="orange">Change Password</font></a></li>
							<li><a href="<%=request.getContextPath()%>/MemberLogoutServlet"><font color="orange">Logout</font></a></li>
								 --%>
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