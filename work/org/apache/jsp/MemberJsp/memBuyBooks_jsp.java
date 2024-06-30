package org.apache.jsp.MemberJsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dbconnectors.DbConnector;

public final class memBuyBooks_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta  http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Member Buy books page</title>\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
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
      out.write("\r\n");
      out.write("\t\t<div id=\"wrapper\">\r\n");
      out.write("\t\t\t\t<div id=\"header-wrapper\">\r\n");
      out.write("\t\t\t\t\t<div id=\"header\">\r\n");
      out.write("\t\t\t\t\t\t<div id=\"logo\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberJsp/viewCart.jsp\"><font color=\"white\">View Cart</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/MemberLogoutServlet\"><font color=\"white\">Logout</font></a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t\t\t\t<table border=\"1\" bgcolor=\"white\" width=\"650px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr bordercolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Book Code</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Book Name</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Language</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Price</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Author</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Publication</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Stock Availability</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Member Discount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Corporate Discount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Add To Cart</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

									Connection con=null;
									Statement stmt=null;
									ResultSet rs=null;
									String sql="";
									con=DbConnector.getConnection();
									sql="select * from m_book";
									
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									
									while(rs.next())
									{
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr bordercolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getInt(1));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getString(2));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getString(4));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getFloat(5));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getString(6));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getString(7));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");

												if((rs.getInt(8))>0)
												{
											
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">In Stock</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");

												}
												else
												{
											
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">Out of Stock</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");
	
												}
											
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getInt(10));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font  color=\"black\">");
      out.print(rs.getInt(11));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><a href=\"");
      out.print(request.getContextPath());
      out.write("/AddToCartServlet?bcode=");
      out.print(rs.getInt(1));
      out.write("&bname=");
      out.print(rs.getString(2));
      out.write("&lang=");
      out.print(rs.getString(4));
      out.write("&price=");
      out.print(rs.getFloat(5));
      out.write("&author=");
      out.print(rs.getString(6));
      out.write("&publ=");
      out.print(rs.getString(7));
      out.write("&stock=");
      out.print(rs.getInt(8));
      out.write("&tax=");
      out.print(rs.getFloat(9));
      out.write("&idisc=");
      out.print(rs.getInt(10));
      out.write("&cdisc=");
      out.print(rs.getInt(11));
      out.write("\">Add To Cart</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t ");
	
									}
								   
      out.write("\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\t");

								String msg5=(String)request.getAttribute("message5");
								if(msg5!=null)
								{
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talert(\"Book is out of stock\");\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t");
			
								}
						
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\t");

								String msg=(String)request.getAttribute("message1");
								if(msg!=null)
								{
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talert(\"Book added to cart successfully\");\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t");
			
								}
								
								String msg1=(String)request.getAttribute("message2");
								if(msg1!=null)
								{
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talert(\"Sorry book is not added to cart..please try again\");\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t");
			
								}	String msg3=(String)request.getAttribute("message3");
								if(msg1!=null)
								{
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talert(\"Book is already in the cart\");\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t");
			
								}
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div id=\"sidebar\">\r\n");
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
