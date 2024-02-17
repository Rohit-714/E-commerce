<%-- 
    Document   : MyOrder
    Created on : 6 May, 2023, 6:32:14 PM
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
 
                     ps=con.prepareStatement("select * from orderDetails where adminid='"+adminmail+"'");
                 
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
      
       String productid=rs.getString(2);
       Double price=Double.parseDouble(rs.getString(5)); 
       
       String address=rs.getString(4);
       String productName=rs.getString(6);
       String userid=rs.getString(3);
              %>
              
               <div id="items" style="width:350px; background-color:white; line-height:30px;">
                                        <center>
                 
                     
                     <p>productid :<%=productid%></p>
                       
                     <p>price :Rs.<%=price%> </p>
                     <p>address : <%=address%></p>
                     <p>product : <%=productName%></p>
                     <p>user id : <%=userid%></p>
                    </center>
                
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
