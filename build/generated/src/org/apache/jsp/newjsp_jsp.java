package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("    \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("          \n");
      out.write("        <link rel=\"stylesheet\" href=\"css9.css\">\n");
      out.write("  \n");
      out.write("   <style>\n");
      out.write("  \n");
      out.write("   </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("           <hr>\n");
 
//Blob image = null;
Connection con = null;
Statement stmt = null;
ResultSet rs = null;
String query1=null;
String query2=null;
  try {
     Class.forName("com.mysql.jdbc.Driver");
     con =DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
     stmt = con.createStatement();
     String productImg=request.getParameter("image");
     String productName=request.getParameter("productName");
          query1="insert into myimgs values('"+productImg+"','"+productName+"')";
     stmt.executeUpdate(query1);
     query2="select * from myimgs where images='"+productImg+"'";
     rs=stmt.executeQuery(query2);
     
     if(rs.next())
        {
      out.write("     \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        <h1>Product Added Successfully</h1>\n");
      out.write("        <h3>Here are Details of product :</h3>\n");
      out.write("        \n");
      out.write("        <div id=\"product-box\">\n");
      out.write("            <div id=\"product-detail\">\n");
      out.write("                <img src=\"");
      out.print(rs.getString(1));
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("            <div id=\"product-details\">\n");
      out.write("                <table id=\"product-detail\">           \n");
      out.write("                  <tr>\n");
      out.write("                      <td><p colspan=\"2\"><h1>");
      out.print(rs.getString(2));
      out.write("</h1> </p> </td>\n");
      out.write("                  </tr>\n");
      out.write(" \n");
      out.write("                  <tr>\n");
      out.write("                     <td> <p>Brand </p> </td> <td><p>:Puma</p></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                     <td> <p>Category</p> </td><td><p>:Fashion</p></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                     <td> <p>Price </p> </td> <td><p>$89.99</p></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                      <td> <button>Buy Now</button></td><td><button>Add to Cart</button></td>\n");
      out.write("                  </tr>\n");
      out.write("               </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write(" ");
}
      out.write('\n');
}
catch (Exception e) {
out.println("DB problem"); 
return;
}
finally {
try {
rs.close();
stmt.close();
con.close();
}
catch (SQLException e) {
e.printStackTrace();
}
}

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
