package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;
import java.io.*;;

public final class MensCollection_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css100.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("        <style>\n");
      out.write("         \n");
      out.write("            img{\n");
      out.write("                height:75%;\n");
      out.write("                width:98%;\n");
      out.write("                background-color: white;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                margin-top:2%;\n");
      out.write("               }\n");
      out.write("           #collection-view{\n");
      out.write("                display: flex;\n");
      out.write("                flex-wrap:wrap;\n");
      out.write("             \n");
      out.write("                margin:40px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("          \n");
      out.write("            #sidebar{\n");
      out.write("                height:100%;\n");
      out.write("                width:20%;\n");
      out.write("            }\n");
      out.write("            #items{\n");
      out.write("                \n");
      out.write("                height:341px;\n");
      out.write("                width:250px;\n");
      out.write("                line-height: 2px;\n");
      out.write("                border-style: solid;\n");
      out.write("                border-width: 2px;\n");
      out.write("                border-color:#e3e6e6;\n");
      out.write("                border-radius:6px;\n");
      out.write("                justify-content: center;\n");
      out.write("                margin:5px;\n");
      out.write("                transition:all 0.2s;\n");
      out.write("                    }\n");
      out.write("                     p{\n");
      out.write("                        color:rgba(247, 0, 124, 0.9);\n");
      out.write("                        font-size:25px;\n");
      out.write("                        font-weight:300;\n");
      out.write("                        margin-top:15px;\n");
      out.write("                    }\n");
      out.write("                    #MRP{\n");
      out.write("                        text-decoration:line-through;\n");
      out.write("                        }\n");
      out.write("                        #discount{\n");
      out.write("                            \n");
      out.write("                            text-decoration: none;\n");
      out.write("                        }\n");
      out.write("                    #items:hover{\n");
      out.write("                        border-style:solid;\n");
      out.write("                        border-width: 2px;\n");
      out.write("                        border-color:black;\n");
      out.write("                        border-radius:6px;\n");
      out.write("                        box-shadow: 1px 2px 10px 4px #75dcff ;\n");
      out.write("                                     }\n");
      out.write("        </style>\n");
      out.write("    <center><nav style=\"position:fixed; top:0;  width:98%; margin-bottom: 180px;\">\n");
      out.write("         \n");
      out.write("        <a href=\"#\">Big Discounts</a>\n");
      out.write("        <a href=\"#\">New Arrivals</a>\n");
      out.write("        <a href=\"#\">Hot Deals</a>\n");
      out.write("        <a href=\"#\">Fashion Items</a>\n");
      out.write("        <a href=\"#\">Budget friendly</a>\n");
      out.write("        <input type=\"text\" placeholder=\"Search\" size=\"60\" id=\"search-value\">\n");
      out.write("        <a href=\"#\" id=\"right-side\">Sign in/Sign up</a>\n");
      out.write("        </nav></center>\n");
      out.write("    <br><br><br>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("        c=1;\n");
      out.write("        function demo1()\n");
      out.write("        {\n");
      out.write("            if(c==1)\n");
      out.write("            {\n");
      out.write("                document.getElementById('slide').src=\"https://m.media-amazon.com/images/I/81Bq7yzdQsL._AC_UL480_FMwebp_QL65_.jpg\";\n");
      out.write("                c++;\n");
      out.write("            }\n");
      out.write("            else  if(c==2)\n");
      out.write("            {\n");
      out.write("                document.getElementById('slide').src=\"https://m.media-amazon.com/images/I/81EGGfuQtZL._AC_UL480_FMwebp_QL65_.jpg\";\n");
      out.write("                c++;\n");
      out.write("            } \n");
      out.write("            else  if(c==3)\n");
      out.write("            {\n");
      out.write("                document.getElementById('slide').src=\"https://m.media-amazon.com/images/I/71GfcHITo3L._AC_UL480_FMwebp_QL65_.jpg\";\n");
      out.write("                c++;\n");
      out.write("            }\n");
      out.write("            else  if(c==4)\n");
      out.write("            {\n");
      out.write("                document.getElementById('slide').src=\"https://m.media-amazon.com/images/I/71bDzgBQPZL._AC_UL480_FMwebp_QL65_.jpg\";\n");
      out.write("                c=1;\n");
      out.write("            }\n");
      out.write("            setTimeout(demo1,2000);\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"demo1()\">\n");
      out.write("        <h1>");
      out.print(request.getParameter("category"));
      out.write("</h1>\n");
      out.write("        <div id=\"collection-view\">\n");
      out.write("         \n");
      out.write("        ");

            String category=request.getParameter("category");
            String s2="";
          //  Blob image = null;
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
                Statement st=con.createStatement();
               PreparedStatement ps=con.prepareStatement("select * from fashionProducts where category = '"+category+"'");
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
/*	  Blob b=rs.getBlob(2);
	  byte br[]= b.getBytes(1,(int)b.length());
          int size=0;
	  InputStream si=rs.getBinaryStream(2);
           response.reset();
	   response.setContentType("image/jpeg");
while((size=si.read(br))!= -1 ){
response.getOutputStream().write(br,0,size);
}*/
       String brand=rs.getString(2);
       float price=Integer.parseInt(rs.getString(5));
       float discount=price-(15/price)*100;
          
               
      out.write("\n");
      out.write("\n");
      out.write("      \n");
      out.write("                \n");
      out.write("                <div id=\"items\">\n");
      out.write("                    <center>\n");
      out.write("                        \n");
      out.write("                     <img src=\"");
      out.print(rs.getString(8));
      out.write("\" alt=\"orange tree\" >\n");
      out.write("                       <p>");
      out.print(brand);
      out.write("</p>\n");
      out.write("                     <h3 id=\"MRP\">Rs.");
      out.print(price);
      out.write(" </h3>\n");
      out.write("                     <p style=\"font-size:15px;\"><strong style=\"font-size:20px; color:rgba(44, 230, 17, 1);\">Rs.");
      out.print(discount);
      out.write(" </strong>-15% off</p>\n");
      out.write("                    </center>\n");
      out.write("                     \n");
      out.write("                </div>\n");
      out.write("                          \n");
      out.write("              \n");
      out.write("            \n");
      out.write(" ");

     
        }   

      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");

  }
  catch(Exception e)
  {
  System.out.println(e);
  }
            
      out.write("              \n");
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
