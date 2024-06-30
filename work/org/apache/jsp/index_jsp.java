package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dbconnectors.DbConnector;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Welcome page</title>\r\n");
      out.write("<link  type=\"text/css\" rel=\"Stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("\r\n");
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
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"wrapper\">\r\n");
      out.write("\t\t<div id=\"header-wrapper\">\r\n");
      out.write("\t\t\t<div id=\"header\">\r\n");
      out.write("\t\t\t\t<div id=\"logo\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div id=\"menu\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/adminLogin.jsp\">Admin</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a\r\n");
      out.write("\t\t\t\t\t\t\thref=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memberSignUp.jsp\">Sign Up</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a\r\n");
      out.write("\t\t\t\t\t\t\thref=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/memberLogin.jsp\">Member Login</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div id=\"page\">\r\n");
      out.write("\t\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<br></br>\r\n");
      out.write("\t\t\t\t\t<form action=\"");
      out.print(request.getContextPath());
      out.write("/WelcomePageSearchBookServlet\"\r\n");
      out.write("\t\t\t\t\t\tmethod=\"get\">\r\n");
      out.write("\t\t\t\t\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input type=\"text\" name=\"bkname\" size=\"35px\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td><input type=\"submit\" value=\"Search\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t<br></br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<table width=\"800px\" cellpadding=\"2\" cellspacing=\"2\" rules=\"rows\"\r\n");
      out.write("\t\t\t\t\t\tframe=\"box\" border=\"1\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td colspan=\"9\" align=\"center\"><h3>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Available Books Name</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h3></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Book Code</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Book Name</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Language</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Price</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Author</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Publication</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Stock Availability</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Member Discount</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"white\">Corporate Discount</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t</h4></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							Connection con = null;
							Statement stmt = null;
							ResultSet rs = null;
							String sql = "";
							con = DbConnector.getConnection();
							sql = "select * from m_book";

							stmt = con.createStatement();
							rs = stmt.executeQuery(sql);

							while (rs.next()) {
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getInt(1));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getString(2));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getString(4));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getFloat(5));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getString(6));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getString(7));
      out.write("</font></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t");

								if ((rs.getInt(8)) > 0) {
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">In Stock</font></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t");

								} else {
							
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">Out of Stock</font></td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t");

								}
							
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getInt(10));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\"><font color=\"white\">");
      out.print(rs.getInt(11));
      out.write("</font></td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t");

							}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br></br> <br></br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

				String msg = (String) request.getAttribute("message1");
				if (msg != null) {
			
      out.write("\r\n");
      out.write("\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\talert(\"Admin Logout successfull\");\r\n");
      out.write("\t\t\t</script>\r\n");
      out.write("\t\t\t");

				}

				String msg1 = (String) request.getAttribute("message");
				if (msg1 != null) {
			
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

				}

				String msg2 = (String) request.getAttribute("message3");
				if (msg2 != null) {
			
      out.write("\r\n");
      out.write("\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\talert(\"Member Logout successfull\");\r\n");
      out.write("\t\t\t</script>\r\n");
      out.write("\t\t\t");

				}
			
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
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
