package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dbconnectors.DbConnector;

public final class viewbookInwardDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\t\r\n");
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
      out.write("\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									Connection con=null;
									Statement stmt=null;
									ResultSet rs=null;
									String sql="";
									con=DbConnector.getConnection();
									sql="select * from m_book_inward";
									
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									
									if(rs.next())
									{
										
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<table border=\"1\" bgcolor=\"white\" height=\"500\" width=\"450\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr><td colspan=\"13\" align=\"center\"><h3> Book Inward Details </h3></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Inward Date</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Book Code</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">No-of-Books</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t");
	
										rs.beforeFirst();
										while(rs.next())
										{
										
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">");
      out.print(rs.getDate(2));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">");
      out.print(rs.getInt(3));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">");
      out.print(rs.getInt(4));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t ");
	
										}
										
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									}
								

									else
									{
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\talert(\"Sorry there are no books added in the cart\");\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t\t\t");

									}
							   
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div> \r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div id=\"sidebar\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><font size=\"4px\" color=\"orange\">Corporate Members</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/createCorpMembers.jsp\"><font color=\"white\">Create Corporate Members</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/viewMembers.jsp\"><font color=\"white\">View Members</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><font size=\"4px\" color=\"orange\">Book Category</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/addBookCatg.jsp\"><font color=\"white\">Add Book Categories</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/viewBookCatg.jsp\"><font color=\"white\">View Book Categories</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><font size=\"4px\" color=\"orange\">Book Details</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/addBookDetails.jsp\"><font color=\"white\">Add Book Details</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/viewBookDetails.jsp\"><font color=\"white\">View Book Details</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><font size=\"4px\" color=\"orange\">Book Inward Details</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/addbookInwardDetails.jsp\"><font color=\"white\">Add BookInward Details</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/viewbookInwardDetails.jsp\"><font color=\"white\">View BookInward Details</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/viewSalesDetails.jsp\"><font size=\"4px\" color=\"orange\">View Sales Details</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/jsp/changePassword.jsp\"><font size=\"4px\" color=\"orange\">Change Password</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/LogoutServlet\"><font color=\"orange\">Logout</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</div>\r\n");
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
