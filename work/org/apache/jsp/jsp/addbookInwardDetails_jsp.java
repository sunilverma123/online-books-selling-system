package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dbconnectors.DbConnector;
import java.util.ArrayList;

public final class addbookInwardDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Add Book Inward Details page</title>\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function validate()\r\n");
      out.write("{\r\n");
      out.write("\tvar MyForm=document.forms[0];\r\n");
      out.write("\r\n");
      out.write("\tvar iwdate=MyForm.iwdate;\r\n");
      out.write("\tif(iwdate.selectedIndex==0)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please select the date\");\r\n");
      out.write("\t\tiwdate.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\tvar numBook=MyForm.numBooks;\r\n");
      out.write("\tif(numBook.value.length==0 || numBook==\"\" || numBook==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the number of book\");\r\n");
      out.write("\t\tnumBook.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tvar iwmonth=MyForm.iwmonth;\r\n");
      out.write("\tif(iwmonth.selectedIndex==0)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please select the month\");\r\n");
      out.write("\t\tiwmonth.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tvar iwdate2=MyForm.iwdate;\r\n");
      out.write("\tvar iwmonth2=MyForm.iwmonth;\r\n");
      out.write("    if((iwmonth2==04 || iwmonth2==06 || iwmonth2==09 || iwmonth2==11) && iwdate2==31) \r\n");
      out.write("\t {\r\n");
      out.write("\t\t alert(\"Month \"+iwmonth+\" doesn't have 31 days!\");\r\n");
      out.write("\t\t return false;\r\n");
      out.write("\t }\r\n");
      out.write("\r\n");
      out.write("\tvar iwyear=MyForm.iwyear;\r\n");
      out.write("\tif(iwyear.selectedIndex==0)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please select the year\");\r\n");
      out.write("\t\tiwyear.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t\t\r\n");
      out.write("\t}\r\n");
      out.write("\tif (iwmonth == 2) \r\n");
      out.write("\t { \r\n");
      out.write("\t\t // check for february 29th\r\n");
      out.write("\t\t var isleap = (iwyear % 4 == 0 && (iwyear % 100 != 0 || iwyear % 400 == 0));\r\n");
      out.write("\t\t if (iwdate>29 || (iwdate==29 && !isleap))\r\n");
      out.write("\t\t {\r\n");
      out.write("\t\t\t alert(\"February \" + iwyear + \" doesn't have \" + iwdate + \" days!\");\r\n");
      out.write("\t\t\t return false;\r\n");
      out.write("\t\t }\r\n");
      out.write("\t}\r\n");
      out.write("\t\talert ( \"Request forwardd successfully\" );\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t");

						Connection con=null;
						Statement stmt=null;
						ResultSet rs=null;
						String sql="";
						String cat_name="";
						
						sql="select b_code,b_name from m_book where b_stock>='0'";
						con=DbConnector.getConnection();
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						
					
					
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t\t<form action=\"");
      out.print(request.getContextPath());
      out.write("/BookInwardDetailServlet\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<table width=\"400\" height=\"450\" bgcolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td colspan=\"5\" align=\"center\"><h3>Add Book Inward Details </h3></td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t <tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- <td align=\"center\"><font color=\"Black\">Inward date</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td> -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- <td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"iwmonth\" id=\"iwmonth\">\r\n");
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
      out.write("\t\t\t\t\t\t\t\t\t</td> -->\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- <td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"iwyear\" id=\"iwyear\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"select\">--Year--</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<option value=\"2013\">2015</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2014\">2016</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2015\">2017</option>\r\n");
      out.write("\t\t\t\t\t\t\t                <option value=\"2016\">2018</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td> -->\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Book Name</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<select name=\"bcode\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option>--Select--</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t");

																	while(rs.next())
																	{
																
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"");
      out.print(rs.getInt(1));
      out.write("\">   ");
      out.print(rs.getString(2));
      out.write("  </option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t");

																	}
																
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">No of Books</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\"><input type=\"text\" name=\"numBooks\" size=\"35\"  required ></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" colspan=\"5\"><input type=\"submit\" value=\"OK\" onclick=\"return validate()\"></input></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
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
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\t");

													
								String msg1=(String)request.getAttribute("unsuccess");
								if(msg1!=null)
								{
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\talert(\"Book inward detail addition unsuccessfull\");\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t\t");
			
								}
						
      out.write("\r\n");
      out.write("\t\r\n");
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
