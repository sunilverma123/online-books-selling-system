package org.apache.jsp.MemberJsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class memChangePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Member Change password</title>\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function validate()\r\n");
      out.write("{\r\n");
      out.write("\tvar MyForm=document.forms[0];\r\n");
      out.write("\r\n");
      out.write("\tvar oldpwd=MyForm.oldpwd;\r\n");
      out.write("\tif(oldpwd.value.length==0 || oldpwd==\"\" || oldpwd==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the old password\");\r\n");
      out.write("\t\toldpwd.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tvar newpwd=MyForm.newpwd;\r\n");
      out.write("\tif(newpwd.value.length==0 || newpwd==\"\" || newpwd==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the new password\");\r\n");
      out.write("\t\tnewpwd.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar re_newpwd=MyForm.re_newpwd;\r\n");
      out.write("\tif(re_newpwd.value.length==0 || re_newpwd==\"\" || re_newpwd==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please re-enter the new password\");\r\n");
      out.write("\t\tre_newpwd.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\telse\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div align=\"center\" Top=\"10\">\r\n");
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
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<form action=\"");
      out.print(request.getContextPath());
      out.write("/MemChangePasswordServlet\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\t<table width=\"400\" height=\"450\" bgcolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr><td colspan=\"3\" align=\"center\"><h3>Change Password</h3></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

										String loginid="";
										
										HttpSession session2=request.getSession();
										loginid=(String)session2.getAttribute("loginid");
										System.out.println("========loginid retrieved from session=======:" +loginid); 
										
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Login id</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"loginid\" value=\"");
      out.print(loginid);
      out.write("\" readonly=\"readonly\"/></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Enter Old Password</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"password\" name=\"oldpwd\"/></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Enter New Password</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"password\" name=\"newpwd\"/></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">Re-enter New Password</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td><font color=\"black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"password\" name=\"re_newpwd\"/></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\" align=\"center\"><input type=\"submit\" value=\"Submit\" onclick=\"return validate()\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
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
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memChangePassword.jsp\"><font size=\"4px\" color=\"orange\">Change Password</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberLogoutServlet\"><font color=\"orange\">Logout</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</li>\t\r\n");
      out.write("\t\t\t\t</ul>\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- end #sidebar -->\r\n");
      out.write("\t\t\t\t<div style=\"clear: both;\">&nbsp;</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\r\n");
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
