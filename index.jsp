
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnectors.DbConnector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<link  type="text/css" rel="Stylesheet" href="<%=request.getContextPath()%>/style.css">

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
						<li><a href="<%=request.getContextPath()%>/jsp/adminLogin.jsp">Admin</a></li>
						<li><a
							href="<%=request.getContextPath()%>/MemberJsp/memberSignUp.jsp">Sign Up</a></li>
						<li><a
							href="<%=request.getContextPath()%>/MemberJsp/memberLogin.jsp">Member Login</a></li>

					</ul>
				</div>
				
		</div>


		<div id="page">
			<div id="page-bgtop">
				<div id="page-bgbtm">

					<br></br>
					<form action="<%=request.getContextPath()%>/WelcomePageSearchBookServlet"
						method="get">
						<table border="1">
							<tr>
								<td><input type="text" name="bkname" size="35px"></td>
								<td><input type="submit" value="Search"></td>
							</tr>
						</table>
					</form>
					<br></br>

					<table width="800px" cellpadding="2" cellspacing="2" rules="rows"
						frame="box" border="1">
						<tr>
							<td colspan="9" align="center"><h3>
									<font color="white">Available Books Name</font>
								</h3></td>
						</tr>
						<tr>
							<td align="center"><h4>
									<font color="white">Book Code</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Book Name</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Language</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Price</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Author</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Publication</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Stock Availability</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Member Discount</font>
								</h4></td>
							<td align="center"><h4>
									<font color="white">Corporate Discount</font>
								</h4></td>

						</tr>

						<%
							Connection con = null;
							Statement stmt = null;
							ResultSet rs = null;
							String sql = "";
							con = DbConnector.getConnection();
							sql = "select * from m_book";

							stmt = con.createStatement();
							rs = stmt.executeQuery(sql);

							while (rs.next()) {
						%>

						<tr>
							<td align="center"><font color="white"><%=rs.getInt(1)%></font></td>
							<td align="center"><font color="white"><%=rs.getString(2)%></font></td>
							<td align="center"><font color="white"><%=rs.getString(4)%></font></td>
							<td align="center"><font color="white"><%=rs.getFloat(5)%></font></td>
							<td align="center"><font color="white"><%=rs.getString(6)%></font></td>
							<td align="center"><font color="white"><%=rs.getString(7)%></font></td>

							<%
								if ((rs.getInt(8)) > 0) {
							%>
							<td align="center"><font color="white">In Stock</font></td>

							<%
								} else {
							%>
							<td align="center"><font color="white">Out of Stock</font></td>

							<%
								}
							%>

							<td align="center"><font color="white"><%=rs.getInt(10)%></font></td>
							<td align="center"><font color="white"><%=rs.getInt(11)%></font></td>


						</tr>
						<%
							}
						%>
					</table>


				</div>
			</div>
			<br></br> <br></br>

			<%
				String msg = (String) request.getAttribute("message1");
				if (msg != null) {
			%>
			<script type="text/javascript">
				alert("Admin Logout successfull");
			</script>
			<%
				}

				String msg1 = (String) request.getAttribute("message");
				if (msg1 != null) {
			%>

			<%
				}

				String msg2 = (String) request.getAttribute("message3");
				if (msg2 != null) {
			%>
			<script type="text/javascript">
				alert("Member Logout successfull");
			</script>
			<%
				}
			%>
		</div>
	</div>

</body>
</html>