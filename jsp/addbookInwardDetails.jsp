<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book Inward Details page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript">
function validate()
{
	var MyForm=document.forms[0];

	var iwdate=MyForm.iwdate;
	if(iwdate.selectedIndex==0)
	{
		alert("Please select the date");
		iwdate.focus();
		return false;
		
	}
	
	
	var numBook=MyForm.numBooks;
	if(numBook.value.length==0 || numBook=="" || numBook==null)
	{
		alert("Please enter the number of book");
		numBook.focus();
		return false;
	}
	
	var iwmonth=MyForm.iwmonth;
	if(iwmonth.selectedIndex==0)
	{
		alert("Please select the month");
		iwmonth.focus();
		return false;
		
	}
	
	var iwdate2=MyForm.iwdate;
	var iwmonth2=MyForm.iwmonth;
    if((iwmonth2==04 || iwmonth2==06 || iwmonth2==09 || iwmonth2==11) && iwdate2==31) 
	 {
		 alert("Month "+iwmonth+" doesn't have 31 days!");
		 return false;
	 }

	var iwyear=MyForm.iwyear;
	if(iwyear.selectedIndex==0)
	{
		alert("Please select the year");
		iwyear.focus();
		return false;
		
	}
	if (iwmonth == 2) 
	 { 
		 // check for february 29th
		 var isleap = (iwyear % 4 == 0 && (iwyear % 100 != 0 || iwyear % 400 == 0));
		 if (iwdate>29 || (iwdate==29 && !isleap))
		 {
			 alert("February " + iwyear + " doesn't have " + iwdate + " days!");
			 return false;
		 }
	}
		alert ( "Request forwardd successfully" );
		
	
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
						
						sql="select b_code,b_name from m_book where b_stock>='0'";
						con=DbConnector.getConnection();
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						
					
					%>
				
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<form action="<%=request.getContextPath()%>/BookInwardDetailServlet" method="post">
						
						<table width="400" height="450" bgcolor="white">
								
								<tr><td colspan="5" align="center"><h3>Add Book Inward Details </h3></td></tr>
								
								 <tr>
									<!-- <td align="center"><font color="Black">Inward date</font></td>
									<td><font color="Black">:</font></td> -->
									<%-- <td>
											<select name="iwdate" id="iwdate">
												<option value="select">--Day--</option>
												<%
													for(int i=1; i<=31;i++)
													{%>
														<option value="<%=i %>"><%=i %></option>
												<%} %>
											</select>
									</td> --%>
									<!-- <td>
										<select name="iwmonth" id="iwmonth">
											<option value="select">--Month--</option>
											<option value="01">January</option>
							                <option value="02">February</option>
							                <option value="03">March</option>
							                <option value="04">April</option>
							                <option value="05">May</option>
							                <option value="06" >June</option>
							                <option value="07">July</option>
							                <option value="08">August</option>
							                <option value="09">September</option>
							                <option value="10">October</option>
							                <option value="11">November</option>
							                <option value="12">December</option>
										</select>
									</td> -->
									<!-- <td>
										<select name="iwyear" id="iwyear">
											<option value="select">--Year--</option>
											<option value="2013">2015</option>
							                <option value="2014">2016</option>
							                <option value="2015">2017</option>
							                <option value="2016">2018</option>
										</select>
									</td> -->
								</tr>
								
							
								<tr>
									<td align="center"><font color="Black">Book Name</font></td>
									<td><font color="Black">:</font></td>
									<td colspan="3">
														<select name="bcode">
																	<option>--Select--</option>
																<%
																	while(rs.next())
																	{
																%>
																	<option value="<%=rs.getInt(1)%>">   <%=rs.getString(2)%>  </option>
																<%
																	}
																%>
														
														</select>
									</td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">No of Books</font></td>
									<td><font color="Black">:</font></td>
									<td colspan="3"><input type="text" name="numBooks" size="35"  required ></td>
								</tr>
								
								<tr>
									<td align="center" colspan="5"><input type="submit" value="OK" onclick="return validate()"></input></td>
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
	
						<%
													
								String msg1=(String)request.getAttribute("unsuccess");
								if(msg1!=null)
								{
						%>
									<script type="text/javascript">
										alert("Book inward detail addition unsuccessfull");
									</script>
						<%			
								}
						%>
	
</body>
</html>