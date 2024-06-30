package org.apache.jsp.MemberJsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class creditCard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>credit card page</title>\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/javascript/creditCard.js\"></script>\r\n");


String netamount = null;
netamount=request.getParameter("netamount");

      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write(" \r\n");
      out.write("        function onlyAlphabets(e, t) {\r\n");
      out.write("            try {\r\n");
      out.write("                if (window.event) {\r\n");
      out.write("                    var charCode = window.event.keyCode;\r\n");
      out.write("                }\r\n");
      out.write("                else if (e) {\r\n");
      out.write("                    var charCode = e.which;\r\n");
      out.write("                }\r\n");
      out.write("                else { return true; }\r\n");
      out.write("                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))\r\n");
      out.write("                    return true;\r\n");
      out.write("                else\r\n");
      out.write("                    return false;\r\n");
      out.write("            }\r\n");
      out.write("            catch (err) {\r\n");
      out.write("                alert(err.Description);\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write(" \r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write(" \r\n");
      out.write("    function isNumber(evt) {\r\n");
      out.write("        evt = (evt) ? evt : window.event;\r\n");
      out.write("        var charCode = (evt.which) ? evt.which : evt.keyCode;\r\n");
      out.write("        if (charCode > 31 && (charCode < 48 || charCode > 57)) {\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        return true;\r\n");
      out.write("    }\r\n");
      out.write(" \r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div align=\"center\" Top=\"10\">\r\n");
      out.write("<img src=\"");
      out.print(request.getContextPath() );
      out.write("/images/images (10).jpg\" width=\"100\" height=\"80\">\r\n");
      out.write("\r\n");
      out.write("<img src=\"");
      out.print(request.getContextPath() );
      out.write("/images/Red.png\" width=\"900\" height=\"75\"></img>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("<font size=\"5\" color=\"orange\">SMS Alert..</font><img src=\"");
      out.print(request.getContextPath() );
      out.write("/images/download (2).jpg\" width=\"50\" height=\"50\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<form action=\"");
      out.print(request.getContextPath());
      out.write("/CreditCardMemServlet\" method=\"get\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"450\" height=\"550\" bgcolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td colspan=\"3\" align=\"center\"><font color=\"black\">Credit Card Details</font></td></tr><tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Card Number</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"cardnum\" onkeypress=\"return isNumber(event)\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Card Holder Name</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"name\" onkeypress=\"return onlyAlphabets(event,this);\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Bank Name</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"bankname\" onkeypress=\"return onlyAlphabets(event,this);\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Expiry date</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"exmonth\" id=\"iwmonth\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"select\">--Month--</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"01\">January</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"02\">February</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"03\">March</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"04\">April</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"05\">May</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"06\" >June</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"07\">July</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"08\">August</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"09\">September</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"10\">October</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"11\">November</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"12\">December</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"exyear\" id=\"iwyear\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"select\">--Year--</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"2015\">2015</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2016\">2016</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2017\">2017</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2018\">2018</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2019\">2019</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2020\">2020</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2021\">2021</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2022\">2022</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2023\">2023</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2024\">2024</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2025\">2025</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2026\">2026</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2027\">2027</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2028\">2028</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2029\">2029</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2030\">2030</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2031\">2031</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2032\">2032</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2033\">2033</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2034\">2034</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2035\">2035</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">CVV Number</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"cvvnum\" onkeypress=\"return isNumber(event)\"  /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Amount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" value=\"");
      out.print(netamount);
      out.write("\" name=\"amount\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\"><input type=\"submit\" name=\"action\" value=\"ok\" onclick=\"return validateCredit()\"/></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</div>\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t<div id=\"sidebar\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memberHome.jsp\"><font size=\"4px\" color=\"orange\">Home</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memViewProfile.jsp\"><font size=\"4px\" color=\"orange\">Profile</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memSearchBooks.jsp\"><font size=\"4px\" color=\"orange\">Search Books</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memRequestBooks.jsp\"><font size=\"4px\" color=\"orange\">Request Books</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memBuyBooks.jsp\"><font size=\"4px\" color=\"orange\">Buy Books</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memChangePassword.jsp\"><font size=\"4px\" color=\"orange\">Change Password</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberLogoutServlet\"><font color=\"orange\">Logout</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</li>\t\r\n");
      out.write("\t\t\t\t</ul>\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- end #sidebar -->\r\n");
      out.write("\t\t\t\t<div style=\"clear: both;\">&nbsp;</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
