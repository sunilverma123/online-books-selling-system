<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>credit card page</title>
<link type="text/css; charset=utf-8" rel="Stylesheet" type="css/text" href="<%=request.getContextPath()%>/style.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/creditCard.js"></script>
<%

String netamount = null;
netamount=request.getParameter("netamount");
%>
<script type="text/javascript">
 
        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }
 
    </script>
    
    
    
    
    <script type="text/javascript">
 
    function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            return false;
        }
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
			
				<form action="<%=request.getContextPath()%>/CreditCardMemServlet" method="get">
						<table width="450" height="550" bgcolor="white">
								<tr><td colspan="3" align="center"><font color="black">Credit Card Details</font></td></tr><tr>
								<tr>
									<td align="center"><font color="black">Card Number</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="cardnum" onkeypress="return isNumber(event)" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Card Holder Name</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="name" onkeypress="return onlyAlphabets(event,this);" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Bank Name</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="bankname" onkeypress="return onlyAlphabets(event,this);" /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="Black">Expiry date</font></td>
									<td><font color="Black">:</font></td>
									
									<td>
										<select name="exmonth" id="iwmonth">
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
									</td>
									<td>
										<select name="exyear" id="iwyear">
											<option value="select">--Year--</option>
											<option value="2015">2015</option>
							                <option value="2016">2016</option>
							                <option value="2017">2017</option>
							                <option value="2018">2018</option>
							                <option value="2019">2019</option>
							                <option value="2020">2020</option>
							                <option value="2021">2021</option>
							                <option value="2022">2022</option>
							                <option value="2023">2023</option>
							                <option value="2024">2024</option>
							                <option value="2025">2025</option>
							                <option value="2026">2026</option>
							                <option value="2027">2027</option>
							                <option value="2028">2028</option>
							                <option value="2029">2029</option>
							                <option value="2030">2030</option>
							                <option value="2031">2031</option>
							                <option value="2032">2032</option>
							                <option value="2033">2033</option>
							                <option value="2034">2034</option>
							                <option value="2035">2035</option>
										</select>
									</td>
								</tr>
								
								
								<tr>
									<td align="center"><font color="black">CVV Number</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" name="cvvnum" onkeypress="return isNumber(event)"  /></td>
								</tr>
								
								<tr>
									<td align="center"><font color="black">Amount</font></td>
									<td><font color="black">:</font></td>
									<td align="center"><input type="text" value="<%=netamount%>" name="amount" /></td>
								</tr>
								<tr>
									<td colspan="3" align="center"><input type="submit" name="action" value="ok" onclick="return validateCredit()"/></td>
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


	</div>
	</div>	
</body>
</html>