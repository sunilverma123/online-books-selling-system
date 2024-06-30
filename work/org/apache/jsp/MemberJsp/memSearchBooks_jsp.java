package org.apache.jsp.MemberJsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.util.ArrayList;

public final class memSearchBooks_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<link type=\"text/css; charset=utf-8\" rel=\"Stylesheet\" type=\"css/text\" href=\"");
      out.print(request.getContextPath());
      out.write("/style.css\">\r\n");
      out.write("\r\n");
      out.write("<title>Member search books page</title>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function validate()\r\n");
      out.write("{\r\n");
      out.write("\tvar MyForm=document.forms[0];\r\n");
      out.write("\tvar bkname=MyForm.bkname;\r\n");
      out.write("\tif(bkname.value.length==0 || bkname==\"\" || bkname==null)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"Please enter the book name\");\r\n");
      out.write("\t\tbkname.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\telse\r\n");
      out.write("\t\treturn true;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
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
      out.write("\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t\t<div id=\"page-bgtop\">\r\n");
      out.write("\t\t\t<div id=\"page-bgbtm\">\r\n");
      out.write("\t\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t\t\t<form action=\"");
      out.print(request.getContextPath());
      out.write("/MemSearchBookServlet\" method=\"get\">\r\n");
      out.write("\t\t\t\t\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"bkname\" size=\"40px\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td><input type=\"submit\" value=\"Search\" onclick=\"return validate()\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t<br></br>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");
	
							boolean flag=false;
							ArrayList bknameList=new ArrayList();
							ArrayList bklangList=new ArrayList();
							ArrayList bkpriceList=new ArrayList();
							ArrayList authorList=new ArrayList();
							ArrayList publList=new ArrayList();
							ArrayList<Integer> stockList=new ArrayList<Integer>();
							
							bknameList=(ArrayList)request.getAttribute("bknameList");
							bklangList=(ArrayList)request.getAttribute("bklangList");
							bkpriceList=(ArrayList)request.getAttribute("bkpriceList");
							authorList=(ArrayList)request.getAttribute("authorList");
							publList=(ArrayList)request.getAttribute("publList");
							stockList=(ArrayList)request.getAttribute("stockList");
							System.out.println("====bknameList,bklangList,bkpriceList,authorList,publList,stockList--:" +bknameList+""+bklangList+""+bkpriceList+""+authorList+""+publList+""+stockList);
							
									
							if(bknameList!=null)
							{
								
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<table border=\"1\" width=\"700px\" bgcolor=\"white\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Book Name</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Language</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Price</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Author</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Publication</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font size=\"4px\" color=\"blue\">Stock Availability</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t");

											for(int i=0;i<bknameList.size();i++)
											{
										
										
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">");
      out.print(bknameList.get(i));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">");
      out.print(bklangList.get(i));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">");
      out.print(bkpriceList.get(i));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">");
      out.print(authorList.get(i));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">");
      out.print(publList.get(i));
      out.write("</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");

												if((stockList.get(i))>0)
												{
											
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">In Stock</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");

												}
												else
												{
											
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td align=\"center\"><font color=\"black\" size=\"4px\">Out of Stock</font></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t");
	
												}
											
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
		
											}
					                 
      out.write("\r\n");
      out.write("\t\t\t\t\t                 \r\n");
      out.write("\t\t\t\t\t                 </table>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");
	
							}
					     
							String msg=(String)request.getAttribute("message");
							if(msg!=null)
							{
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\talert(\"book is not available\");\r\n");
      out.write("\t\t\t\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t");

							}
					
					
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t <div id=\"sidebar\">\r\n");
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
      out.write("\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
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
