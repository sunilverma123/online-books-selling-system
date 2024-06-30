package org.apache.jsp.MemberJsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dbconnectors.DbConnector;
import com.Member.MemberDao;
import com.sun.java.swing.plaf.windows.resources.windows;

public final class viewBill_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>View Bill page</title>\r\n");
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
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("alert(\"Bill Generated Suucessfully !!! \");\r\n");
      out.write("</script>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<table border=\"1\" width=\"800px\" bgcolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td colspan=\"9\" align=\"center\"><font color=\"blue\" size=\"4px\">Bill</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"blue\" size=\"4px\">Book Code</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"blue\" size=\"4px\">Price</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"blue\" size=\"4px\">Discount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"blue\" size=\"4px\">Tax</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"blue\" size=\"4px\">Sale Amount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

									Connection con=null;
									Statement stmt=null;
									ResultSet rs=null;
									ResultSet rs2=null;
									String sql="";
									con=DbConnector.getConnection();
									int bill_no=0;
									String sql2="select bill_no from m_sales";
									stmt=con.createStatement();
									rs2=stmt.executeQuery(sql2);
									while(rs2.next())
									{
										bill_no=rs2.getInt(1);
									}
									System.out.println("Billllllllllllllllll nooooooooooo   "+bill_no);
									sql="select t.b_code,t.b_price,t.discount_amount,t.tax_amount,t.sale_amount from t_sales t where t.bill_no='"+bill_no+"'";
									//sql="select te.b_name,t.b_price,t.discount_amount,t.tax_amount,t.sale_amount from temp_cart te join t_sales t where te.b_code=t.b_code";
									System.out.println("Queryy is"+sql);
									stmt=con.createStatement();
									rs=stmt.executeQuery(sql);
									float total_price=0;
									ResultSet rs1=null;
									int mcode=0;
									String sql1="";
									String loginid=(String) session.getAttribute("loginid");
									rs1=MemberDao.getMemCode(loginid);
									
										while(rs1.next())
										{
											mcode=rs1.getInt(1);
										}
									
									
									con=DbConnector.getConnection();
									sql1="select * from temp_cart where m_code='"+mcode+"'";
									boolean b=MemberDao.deleteFromCart(mcode);
									while(rs.next())
									{
										total_price=total_price+rs.getFloat(5);
										System.out.println("----Total price value---:" +total_price);
									
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">");
      out.print(rs.getString(1));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">");
      out.print(rs.getFloat(2));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">");
      out.print(rs.getFloat(3));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">");
      out.print(rs.getFloat(4));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">");
      out.print(rs.getFloat(5));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t ");
	
									}
								   
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t   \r\n");
      out.write("\t\t\t\t\t\t\t\t   \t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td colspan=\"4\" align=\"left\"><font color=\"blue\">Total Bill price:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\">");
      out.print(total_price);
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
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
