<%-- 
    Document   : OrderDetails
    Created on : 2 Mar, 2023, 10:12:18 PM
    Author     : DELL
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>JSP Page</title>
         <%@ include file="Navbar.jsp" %>
            <%
    String address=request.getParameter("address");
    String price=request.getParameter("price");
    String productName=request.getParameter("productName");
    //String discount=request.getParameter("discount");
    //String status=request.getParameter("status");
   
%>
       

    </head>
       <body>
           <br><br><br><br>
<%
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
        Statement st1=con.createStatement();
        Statement st2=con.createStatement();
        
        if(productId!=null)
        {
        String productDetail="select * from products where productid="+productId;
        ResultSet detailrs=st1.executeQuery(productDetail);
        int stock=0;
        
        if(detailrs.next())
        {
            stock=Integer.parseInt(detailrs.getString(8));
        }
        String adminid=detailrs.getString(14);
        stock=stock-1;
         String stockUpdate="update products set stock="+stock+" where productid="+productId;
         st1.executeUpdate(stockUpdate);
             String query="insert into orderdetails  (productid,userid,address,price,productname,adminid) values("+productId+",'"+usermail+"','"+address+"',"+price+",'"+productName+"','"+adminid+"')";
         st1.executeUpdate(query);
        }
         String allOrders="select * from orderdetails where userid='"+usermail+"' order by orderid desc";
    
         ResultSet orderrs=st1.executeQuery(allOrders);
 %>
       <center>
           <%if(productId!=null)
           {%>
 <h3>Order Successfull</h3>
 <%}%>
            <h1>Your Orders</h1>
       </center>
     
       <div id="collection-view" style="justify-content: center;">
            <%while(orderrs.next())
            { 
            String productid=orderrs.getString(2);
            String productdetails="select * from products where productid="+ productid;
            ResultSet productrs=st2.executeQuery(productdetails);
            if(!productrs.next())
            return;
       double discount=Double.parseDouble(productrs.getString(6));
      double Price=Double.parseDouble(productrs.getString(5));
       double newPrice=Math.round(Price-((discount/100)*Price));
          
            %>
         
                <div id="items">
                    <a href="ProductDetail.jsp?usermail=<%=usermail%>&productId=<%=productId%>"
                    <center>
                  
                     <img  id="img" src="<%=productrs.getString(11)%>" alt="orange tree" >
                       <p><%=productrs.getString(1)%></p>
                     <h3 id="MRP">Rs.<%=productrs.getString(5)%> </h3>
                     <p style="font-size:15px;"><strong style="font-size:20px; color:rgba(44, 230, 17, 1);">Rs.<%=newPrice%> </strong><%=discount%> % off</p>
                      
                    </center>
                </a> 
                     
                </div>
     
            <%}%>
     
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
