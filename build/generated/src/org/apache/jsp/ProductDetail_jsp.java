package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class ProductDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css148.css\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <style>\n");
      out.write("        #details-box{\n");
      out.write("            display: flex;\n");
      out.write("            flex-wrap:wrap;\n");
      out.write("            justify-content: center;\n");
      out.write("            background-color: rgba(200,247,255,0.2);\n");
      out.write("            width:80%;\n");
      out.write("            height:80%;\n");
      out.write("            margin-top:10%;\n");
      out.write("            border-radius: 2%;\n");
      out.write("            box-shadow: 2px 7px 10px rgba(247, 0, 124, 0.5);\n");
      out.write("        }\n");
      out.write("        #detail-inner{\n");
      out.write("           text-align: left;\n");
      out.write("           margin:7%;\n");
      out.write("           \n");
      out.write("           font-size:20px;\n");
      out.write("           border-style: solid;\n");
      out.write("           border:2px;\n");
      out.write("        }\n");
      out.write("        #detail-inner img{\n");
      out.write("           width:310px;\n");
      out.write("           height:300px;\n");
      out.write("           margin-bottom: 1%;\n");
      out.write("        }\n");
      out.write("        #below-img-1{\n");
      out.write("            width:100px;\n");
      out.write("            background-image: url(\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV\n");
      out.write("                         4Y8&usqp=CAU\");\n");
      out.write("            background-size: cover;\n");
      out.write("        }\n");
      out.write("        #below-img-2{\n");
      out.write("            width:100px;\n");
      out.write("            background-image: url(\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV\n");
      out.write("                         4Y8&usqp=CAU\");\n");
      out.write("        }\n");
      out.write("        #below{\n");
      out.write("            width:100px;\n");
      out.write("            background-image: url(\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV\n");
      out.write("                         4Y8&usqp=CAU\");\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write(" <center><nav style=\"position:fixed; top:0;  width:98%; margin-bottom: 180px;\">\n");
      out.write("         \n");
      out.write("        <a href=\"#\">Big Discounts</a>\n");
      out.write("        <a href=\"#\">New Arrivals</a>\n");
      out.write("        <a href=\"#\">Hot Deals</a>\n");
      out.write("        <a href=\"#\">Fashion Items</a>\n");
      out.write("        <a href=\"#\">Budget friendly</a>\n");
      out.write("        <input type=\"text\" placeholder=\"Search\" size=\"60\" id=\"search-value\">\n");
      out.write("        <a href=\"#\" id=\"right-side\">Sign in/Sign up</a>\n");
      out.write("        </nav>\n");
      out.write(" </center>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

        try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
       Statement st=con.createStatement();         
       int productId=Integer.parseInt(request.getParameter("productid"));
       String query="select * from fashionProducts where productId="+productId;
       ResultSet rs=st.executeQuery(query);
       if(rs.next())
       {
       String productName=rs.getString(1);
       String brandName=rs.getString(2);
       int price=Integer.parseInt(rs.getString(5));
       String fabric=rs.getString(7);
       String img1=rs.getString(8);
       String img2=rs.getString(10);
       String img3=rs.getString(11);
       String img4=rs.getString(12);
       
       String usermail=request.getParameter("mail");
       
       
      out.write("\n");
      out.write("    <center>\n");
      out.write("        <div id=\"details-box\">\n");
      out.write("            <div id=\"detail-inner\">\n");
      out.write("                \n");
      out.write("                <img src=\"");
      out.print(img1);
      out.write("\" id=\"top-img\">\n");
      out.write("                <br>\n");
      out.write("                <button id=\"below\" onclick='change(1)'\n");
      out.write("                        style=\"   \n");
      out.write("                        width:100px; height: 100px; \n");
      out.write("                        background-image: url('");
      out.print(img2);
      out.write("');\n");
      out.write("                        background-size:cover;\">\n");
      out.write("                </button>\n");
      out.write("            \n");
      out.write("                <button id=\"below\" onclick='change(2)'\n");
      out.write("                        style=\"\n");
      out.write("                        width:100px; height: 100px; \n");
      out.write("                        background-image: url('");
      out.print(img3);
      out.write("');\n");
      out.write("                        background-size:cover;\">\n");
      out.write("                </button>\n");
      out.write("                 \n");
      out.write("                <button id=\"below\" onclick='change(3)'\n");
      out.write("                        style=\"\n");
      out.write("                        width:100px; height: 100px; \n");
      out.write("                        background-image: url('");
      out.print(img4);
      out.write("');\n");
      out.write("                        background-size:cover;\">\n");
      out.write("                </button>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            <div id=\"detail-inner\" style=\"line-height:50px;\">\n");
      out.write("                <h1>Product name</h1>\n");
      out.write("             \n");
      out.write("                    Brand : XYZ Brand <br>\n");
      out.write("                    For   : Male<br>\n");
      out.write("                    Price :Rs.299<br>\n");
      out.write("                    Functionalities:lorem you ye iop bhuik tdr bvcdsd.<br>\n");
      out.write("                    <button id=\"buy-button\" >Buy Now</button>\n");
      out.write("                    <input id=\"addcart-button\" placeholder=\"Add to Cart\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("   \n");
      out.write("    </body>\n");
      out.write(" \n");
      out.write("    <script>\n");
      out.write("        function change(No)\n");
      out.write("        {\n");
      out.write("            //document.getElementById(\"i\").innerHTML=\"hi\";\n");
      out.write("            if(No==1)\n");
      out.write("            {\n");
      out.write("                document.getElementById('top-img').src=\"");
      out.print(img2);
      out.write("\";\n");
      out.write("            }\n");
      out.write("            if(No==2)\n");
      out.write("            {\n");
      out.write("                document.getElementById('top-img').src=\"");
      out.print(img3);
      out.write("\";\n");
      out.write("            }\n");
      out.write("            if(No==3)\n");
      out.write("            {\n");
      out.write("                document.getElementById('top-img').src=\"");
      out.print(img4);
      out.write("\";\n");
      out.write("            }\n");
      out.write("            }\n");
      out.write("    </script>\n");
      out.write("       ");

        }
    }
    catch(Exception e)
    {
      out.println(e);
    }
    
      out.write("\n");
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
