<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<%@page import="java.util.ArrayList"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book details page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
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

	var category=MyForm.category;
	if(category.selectedIndex==0)
	{
		alert("Please select atleast one category");
		category.focus();
		return false;
	}
	
	var lang=MyForm.lang;
	if(lang.value.length==0 || lang=="" || lang==null)
	{
		alert("Please enter the Language");
		lang.focus();
		return false;
	}

	var price=MyForm.price;
	if(price.value.length==0 || price=="" || price==null)
	{
		alert("Please enter the price");
		price.focus();
		return false;
	}
	var pricenum=/[0-9]/;
	if(!price.value.match(pricenum))
	{
		alert("Please enter only numbers");
		price.focus();
		return false;
	}


	var author=MyForm.author;
	if(author.value.length==0 || author=="" || author==null)
	{
		alert("Please enter the author");
		author.focus();
		return false;
	}

	var publ=MyForm.publ;
	if(publ.value.length==0 || publ=="" || publ==null)
	{
		alert("Please enter the publication");
		publ.focus();
		return false;
	}

	var tax=MyForm.tax;
	if(tax.value.length==0 || tax=="" || tax==null)
	{
		alert("Please enter the tax");
		tax.focus();
		return false;
	}
	var taxnum=/[0-9]/;
	if(!tax.value.match(taxnum))
	{
		alert("Please enter only numbers");
		tax.focus();
		return false;
	}

	var idisc=MyForm.idisc;
	if(idisc.value.length==0 || idisc=="" || idisc==null)
	{
		alert("Please enter the Individual Member Discount");
		idisc.focus();
		return false;
	}
	var idnum=/[0-9]/;
	if(!idisc.value.match(idnum))
	{
		alert("Please enter only numbers");
		idisc.focus();
		return false;
	}

	var cdisc=MyForm.cdisc;
	if(cdisc.value.length==0 || cdisc=="" || cdisc==null)
	{
		alert("Please enter the Corporate Member Discount");
		cdisc.focus();
		return false;
	}
	var cdnum=/[0-9]/;
	if(!cdisc.value.match(cdnum))
	{
		alert("Please enter only numbers");
		cdisc.focus();
		return false;
	}

	var status=MyForm.status;
	if(status.selectedIndex==0)
	{
		alert("Please select atleast one status");
		status.focus();
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


	
		
	
	
					
					<%
						Connection con=null;
						Statement stmt=null;
						ResultSet rs=null;
						String sql="";
						String cat_name="";
						
						sql="select cat_name from m_categories";
						con=DbConnector.getConnection();
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						
					
					%>
					
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<form action="<%=request.getContextPath()%>/AddBookDetailServlet" method="post">
						
						<table width="450" height="500" bgcolor="white">
								
								<tr><td colspan="3" align="center"><h3>Add Book Details </h3></td></tr><tr></tr>
								
								<tr>
									<td align="center"><font color="Black">Book Name</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="bkname" size="25"></td>
								</tr>
								
							
								<tr>
									<td align="center"><font color="Black">Category</font></td>
									<td><font color="Black">:</font></td>
									<td align="center">
														<select name="category">
																<option>--Select--</option>
																<%
																	while(rs.next())
																	{
																%>
																	<option><%=rs.getString(1)%></option>
																<%
																	}
																%>
														
														</select>
									</td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Language</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="lang" size="25"></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Price</font></td>
									<td>:</td>
									<td align="center"><input type="text" name="price" size="25"></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Author</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="author" size="25"></td>
								</tr>
																
								<tr>
									<td align="center"><font color="Black">Publication</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="publ" size="25"></td>
								</tr>
								
								
								<tr>
									<td align="center"><font color="Black">Tax</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="tax" size="25"></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Individual Member Discount</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="idisc" size="25"></td>
								</tr>
																
								<tr>
									<td align="center"><font color="Black">Corporate Member Discount</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><input type="text" name="cdisc" size="25"></td>
								</tr>
								
								
							<tr>
									<td align="center"><font color="Black"> Book Description</font></td>
									<td><font color="Black">:</font></td>
									<td align="center"><textarea rows="6" cols="24" name="bdesc"></textarea></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Status</font></td>
									<td><font color="Black">:</font></td>
									<td align="center">
										<select name="status">
												<option><font color="Black">--Select--</font></option>
												<option><font color="Black">List</font></option>
												<option><font color="Black">Hold</font></option>
												<option><font color="Black">Expired</font></option>
										</select>
									</td>
								</tr>	
									
									
								<tr>
									<td align="center" colspan="3"><input type="submit" value="Add Book Details" onclick="return validate()"></input></td>
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