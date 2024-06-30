package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import com.dbconnectors.DbConnector;
import java.util.ArrayList;

public final class addBookDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Add Book details page</title>\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function validate()\r\n");
      out.write("{\r\n");
      out.write("\tvar MyForm=document.forms[0];\r\n");
      out.write("\r\n");
      out.write("\tvar bkname=MyForm.bkname;\r\n");
      out.write("\tif(bkname.value.length==0 || bkname==\"\" || bkname==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the book name\");\r\n");
      out.write("\t\tbkname.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar category=MyForm.category;\r\n");
      out.write("\tif(category.selectedIndex==0)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please select atleast one category\");\r\n");
      out.write("\t\tcategory.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\tvar lang=MyForm.lang;\r\n");
      out.write("\tif(lang.value.length==0 || lang==\"\" || lang==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the Language\");\r\n");
      out.write("\t\tlang.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar price=MyForm.price;\r\n");
      out.write("\tif(price.value.length==0 || price==\"\" || price==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the price\");\r\n");
      out.write("\t\tprice.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar pricenum=/[0-9]/;\r\n");
      out.write("\tif(!price.value.match(pricenum))\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter only numbers\");\r\n");
      out.write("\t\tprice.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\tvar author=MyForm.author;\r\n");
      out.write("\tif(author.value.length==0 || author==\"\" || author==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the author\");\r\n");
      out.write("\t\tauthor.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar publ=MyForm.publ;\r\n");
      out.write("\tif(publ.value.length==0 || publ==\"\" || publ==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the publication\");\r\n");
      out.write("\t\tpubl.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar tax=MyForm.tax;\r\n");
      out.write("\tif(tax.value.length==0 || tax==\"\" || tax==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the tax\");\r\n");
      out.write("\t\ttax.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar taxnum=/[0-9]/;\r\n");
      out.write("\tif(!tax.value.match(taxnum))\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter only numbers\");\r\n");
      out.write("\t\ttax.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar idisc=MyForm.idisc;\r\n");
      out.write("\tif(idisc.value.length==0 || idisc==\"\" || idisc==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the Individual Member Discount\");\r\n");
      out.write("\t\tidisc.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar idnum=/[0-9]/;\r\n");
      out.write("\tif(!idisc.value.match(idnum))\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter only numbers\");\r\n");
      out.write("\t\tidisc.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar cdisc=MyForm.cdisc;\r\n");
      out.write("\tif(cdisc.value.length==0 || cdisc==\"\" || cdisc==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the Corporate Member Discount\");\r\n");
      out.write("\t\tcdisc.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tvar cdnum=/[0-9]/;\r\n");
      out.write("\tif(!cdisc.value.match(cdnum))\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter only numbers\");\r\n");
      out.write("\t\tcdisc.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tvar status=MyForm.status;\r\n");
      out.write("\tif(status.selectedIndex==0)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please select atleast one status\");\r\n");
      out.write("\t\tstatus.focus();\r\n");
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
      out.write("\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");

						Connection con=null;
						Statement stmt=null;
						ResultSet rs=null;
						String sql="";
						String cat_name="";
						
						sql="select cat_name from m_categories";
						con=DbConnector.getConnection();
						stmt=con.createStatement();
						rs=stmt.executeQuery(sql);
						
					
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t\t<form action=\"");
      out.print(request.getContextPath());
      out.write("/AddBookDetailServlet\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<table width=\"450\" height=\"500\" bgcolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr><td colspan=\"3\" align=\"center\"><h3>Add Book Details </h3></td></tr><tr></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Book Name</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"bkname\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Category</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<select name=\"category\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option>--Select--</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t");

																	while(rs.next())
																	{
																
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<option>");
      out.print(rs.getString(1));
      out.write("</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t");

																	}
																
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Language</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"lang\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Price</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"price\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Author</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"author\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Publication</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"publ\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Tax</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"tax\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Individual Member Discount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"idisc\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Corporate Member Discount</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><input type=\"text\" name=\"cdisc\" size=\"25\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\"> Book Description</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><textarea rows=\"6\" cols=\"24\" name=\"bdesc\"></textarea></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"Black\">Status</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><font color=\"Black\">:</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<select name=\"status\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<option><font color=\"Black\">--Select--</font></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<option><font color=\"Black\">List</font></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<option><font color=\"Black\">Hold</font></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<option><font color=\"Black\">Expired</font></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td align=\"center\" colspan=\"3\"><input type=\"submit\" value=\"Add Book Details\" onclick=\"return validate()\"></input></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
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
      out.write("\t\t\r\n");
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
