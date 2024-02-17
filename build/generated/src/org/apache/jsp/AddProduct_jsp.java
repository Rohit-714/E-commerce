package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;

public final class AddProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/AdminNavbar.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link ref=\"stylesheet\" href=\"css167.css\">\n");
      out.write("        ");
      out.write("\n");
      out.write("<html\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"css145.css\">\n");
      out.write("<style>\n");
      out.write("   \n");
      out.write("</style>\n");

    String adminmail=request.getParameter("adminmail");
    

      out.write("\n");
      out.write("<center>\n");
      out.write("    <nav>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("        <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV4Y8&usqp=CAU\" style=\"  margin-bottom:-20px;margin-left:10px; height:60px; width:60px;\">\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                  <a href=\"AdminHome.jsp?adminmail=");
      out.print(adminmail);
      out.write("\">Home</a>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                  <a href=\"AllProduct.jsp?adminmail=");
      out.print(adminmail);
      out.write("&order=all\">All Products</a>\n");
      out.write("                  \n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("                <td>\n");
      out.write("                    <a href=\"AllProduct.jsp?adminmail=");
      out.print(adminmail);
      out.write("&order=your\">Update Product</a>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                 ");
if(adminmail==null)
                 {
      out.write("\n");
      out.write("                    <a href=\"LoginAdmin.jsp\">Sign in/Sign up</a>\n");
      out.write("                 ");
}
                 else
                  {
      out.write("\n");
      out.write("                   <a href=\"OrderList.jsp?adminmail=");
      out.print(adminmail);
      out.write("\">Your Orders</a>\n");
      out.write("                 ");
  }
      out.write("\n");
      out.write("\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("        <form action=\"Collection.jsp\">\n");
      out.write("        <input type=\"text\" placeholder=\"Search\" size=\"60\" name=\"search-value\" id=\"search-value\">\n");
      out.write("        <input type=\"submit\" value=\"search\">\n");
      out.write("        </form>\n");
      out.write("                </td>\n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("    </nav>\n");
      out.write("         </center>\n");
      out.write("</head>\n");
      out.write("                <body></body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #product-addbox{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color:black;\n");
      out.write("                border:solid;\n");
      out.write("                height:80%;\n");
      out.write("                width:80%;\n");
      out.write("                margin-top:50px;\n");
      out.write("                box-shadow:0px 20px 20px 20px snow;\n");
      out.write("                border-radius:5px;\n");
      out.write("            }\n");
      out.write("            input{\n");
      out.write("                font-size:15px;\n");
      out.write("                padding:10px;\n");
      out.write("                margin: 0px 30px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br>\n");
      out.write("    <center>\n");
      out.write("        <div id=\"product-addbox\">\n");
      out.write("        <form action=\"newjsp.jsp\">\n");
      out.write("        <h1>Add Product</h1>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <th colspan=\"2\"><h2>Enter Details of your Product</h2></th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><h3>Add Image No.1</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Enter product Image Link\" name=\"image-1\"></td>\n");
      out.write("                 \n");
      out.write("                \n");
      out.write("                <td><h3>Add Image No.2</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Enter product Image Link\" name=\"image-2\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><h3>Add Image No.3</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Enter product Image Link\" name=\"image-3\"></td>\n");
      out.write("       \n");
      out.write("                <td><h3>Enter Product Name</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Product Name\" name=\"Name\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td><h3>Enter Brand Name</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Brand\" name=\"brand\"></td>\n");
      out.write("             \n");
      out.write("                <td><h3>Price</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Price\" name=\"price\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td><h3>Discount</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Discount %\" name=\"discount\"></td>\n");
      out.write("             \n");
      out.write("                <td><h3>Sizes</h3></td>\n");
      out.write("                <td> <input type=\"text\" placeholder=\"Sizes\" name=\"sizes\"></td>\n");
      out.write("                </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td><h3>Stock Available</h3></td>\n");
      out.write("                <td> <input type=\"text\" placeholder=\"Stock\" name=\"stock\"></td>\n");
      out.write("        \n");
      out.write("                <td><h3>Gender</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Gender\" name=\"gender\"></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td><h3>Category</h3></td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"category\" name=\"category\"></td>\n");
      out.write("                <td>\n");
      out.write("                    <h3>Product Id</h3>\n");
      out.write("                </td>\n");
      out.write("                <td><input type=\"text\" placeholder=\"Product Id\" name=\"productId\"></td>\n");
      out.write("             </tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td colspan=\"2\">\n");
      out.write("                     <textarea name=\"detail\"placeholder=\"Enter Some Details\" style=\" font-size:18px; width:350px; height: 50px;\"></textarea>\n");
      out.write("                 </td>\n");
      out.write("             \n");
      out.write("                 <input type=\"hidden\" value=\"");
      out.print(adminmail);
      out.write("\" name=\"adminmail\">\n");
      out.write("                 <td><input type=\"submit\" id=\"buy-button\" value=\"Add Product\"></td>\n");
      out.write("             </tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
