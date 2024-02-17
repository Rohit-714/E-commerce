package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class LoginUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css148.css\">\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("      \n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <div id=\"outerbox\">\n");
      out.write("            \n");
      out.write("            <div id=\"innerbox-2\">\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"innerbox-1\">\n");
      out.write("                            <center><h1>Login Your Self</h1></center>\n");
      out.write("                            <form>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><h2>E-mail</h2></td><td><input type=\"email\" name=\"e-mail\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                    <tr>\n");
      out.write("                        <td><h2>Password</h2></td><td><input type=\"password\" name=\"password\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\"> <center><input type=\"submit\" id=\"addcart-button\" style=\"background-color: red;\" value=\"Login\" name=\"register\"></center></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("                         </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("    ");

    String email=request.getParameter("e-mail");
    String password=request.getParameter("password");
    //String productId=request.getParameter("productId");
    
    if(email!=null)
    {
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
        Statement st=con.createStatement();
        String query="select * from UserDetails where email='"+email+"' and userpassword='"+password+"'";
        ResultSet rs=st.executeQuery(query);
        if(rs.next())
        {
          /* if(productId!="")
           {
               
           }*/
            out.println("Login SuccessFully");
        }
        else{
            out.println("Can't Login");
        }
        }
        catch(Exception e)
        {
        out.println(e);
        }
       }
    
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
