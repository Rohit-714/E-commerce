<%-- 
    Document   : AllProduct
    Created on : 4 May, 2023, 6:20:29 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="java.io.*;"  %>
<html>
    <head>
    
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
     <%@include file="AdminNavbar.jsp"%>
    <br><br><br>
    <br><br><br>
    </head>
    <body>
        
    
         
        <%
            String category=request.getParameter("category");
            String brandurl=request.getParameter("brand");
            String search_value=request.getParameter("search-value");
            String discounturl=request.getParameter("discount");
            String priceurl=request.getParameter("price");
            String order=request.getParameter("order");
           

            //  Blob image = null;
             %>
<div id="collection-view">    
           <%
               ResultSet rs=null;
               ResultSet rs1=null;
               

            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
                Statement st=con.createStatement();
                PreparedStatement ps=null;               
                    
                  if(order.equals("your"))
                {
                    


                ps=con.prepareStatement("select * from Products where adminid='"+adminmail+"'");
                }
                  else if(order.equals("all"))
                {
                ps=con.prepareStatement("select * from products"); 
                
                }

              
                  rs=ps.executeQuery();
                  

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
        
       int productIdd=Integer.parseInt(rs.getString(10));
                            double discountpercent=Double.parseDouble(rs.getString(6));
      double price=Double.parseDouble(rs.getString(5));
       double discount=Math.round(price-((discountpercent/100)*price));
         
              %>
              
               <div id="items">
                 <%   if(order.equals("your"))
                {
                 %>
                    <a href="UpdateProduct.jsp?adminmail=<%=adminmail%>&productId=<%=productIdd%>&update=yes">
                   <% }%><center>
                 
                     <img id="img" src="<%=rs.getString(11)%>" alt="orange tree" >
                       <p><%=brand%></p>
                     <h3 id="MRP">Rs.<%=price%> </h3>
                     <p style="font-size:15px;"><strong style="font-size:20px; color:rgba(44, 230, 17, 1);">Rs.<%=discount%> </strong><%=discountpercent%>% off</p>
                      
                    </center>
                 <% if(order.equals("your"))
                {
                 %>
                    </a>
                            <%}%>
                </div>
             
                          
              
            
 <%
     
      }     
%>
        </div>

        <%
  }
  catch(Exception e)
  {
   out.println(e);
  }
            %>              
    </body>
</html>
