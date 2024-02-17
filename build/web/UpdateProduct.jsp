<%-- 
    Document   : UpdateProduct
    Created on : 4 May, 2023, 6:42:30 PM
    Author     : DELL
--%>
<%@page import="javax.servlet.*"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link ref="stylesheet" href="css167.css">
        
        <%@include file="AdminNavbar.jsp" %>
        <style>
            #product-addbox{
                text-decoration: none;
                color:black;
                border:solid;
                height:80%;
                width:80%;
                margin-top:50px;
                box-shadow:0px 20px 20px 20px snow;
                border-radius:5px;
            }
            input{
                font-size:15px;
                padding:10px;
                margin: 0px 30px;

            }
        </style>
    </head><br><br>
    <body>
        <% 
//Blob image = null;
Connection con = null;
Statement stmt = null;
ResultSet rs = null;
String query1=null;
String query2=null;
String update=request.getParameter("update");
String productid=request.getParameter("productId");
try {
     Class.forName("com.mysql.jdbc.Driver");
     con =DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
     stmt = con.createStatement();
    query2="select * from Products where productId='"+productid+"'";
     rs=stmt.executeQuery(query2);
     rs.next();
      String productImg1=rs.getString(11);
     String productImg2=rs.getString(12);
     String productImg3=rs.getString(13);
    
     String productName=rs.getString(1);
     String brandName=rs.getString(2);
     String sizes=rs.getString(3);
     String category=rs.getString(4); 
     String priceS=rs.getString(5);
     
     String discountS=rs.getString(6);
     String gender=rs.getString(7);
     String stockS=rs.getString(8);
     String detail=rs.getString(9);
     out.println(update+productid);
    %>
    
    
    
    
    <br>
      <center>
        <div id="product-addbox">
            <form action="newjsp.jsp">
        <h1>Add Product</h1>
        <table>
            <tr>
                <th colspan="2"><h2>Enter Details of your Product</h2></th>
            </tr>
            <tr>
                <td><h3>Add Image No.1</h3></td>
                <td><input type="text" placeholder="Enter product Image Link" value="<%=productImg1%>" name="image-1"></td>
                 
                
                <td><h3>Add Image No.2</h3></td>
                <td><input type="text" placeholder="Enter product Image Link" value="<%=productImg2%>" name="image-2"></td>
            </tr>
            <tr>
                <td><h3>Add Image No.3</h3></td>
                <td><input type="text" placeholder="Enter product Image Link" value="<%=productImg3%>" name="image-3"></td>
       
                <td><h3>Enter Product Name</h3></td>
                <td><input type="text" placeholder="Product Name" value="<%=productName%>" name="Name"></td>
             </tr>
             <tr>
                <td><h3>Enter Brand Name</h3></td>
                <td><input type="text" placeholder="Brand" value="<%=brandName%>" name="brand"></td>
             
                <td><h3>Price</h3></td>
                <td><input type="text" placeholder="Price" value="<%=priceS%>" name="price"></td>
             </tr>
             <tr>
                <td><h3>Discount</h3></td>
                <td><input type="text" placeholder="Discount %" value="<%=discountS%>" name="discount"></td>
             
                <td><h3>Sizes</h3></td>
                <td> <input type="text" placeholder="Sizes" value="<%=sizes%>" name="sizes"></td>
                </tr>
             <tr>
                <td><h3>Stock Available</h3></td>
                <td> <input type="text" placeholder="Stock" value="<%=stockS%>" name="stock"></td>
        
                <td><h3>Gender</h3></td>
                <td><input type="text" placeholder="Gender" value="<%=gender%>" name="gender"></td>
            </tr>
             <tr>
                <td><h3>Category</h3></td>
                <td><input type="text" placeholder="category" value="<%=category%>" name="category"></td>
                <td>
                    <h3>Product Id</h3>
                </td>
              </tr>
             <tr>
                 <td colspan="2">
                     <textarea name="detail"placeholder="Enter Some Details" style=" font-size:18px; width:350px; height: 50px;"></textarea>
                 </td>
                 <td><input type="hidden" name="productId" value="<%=productid%>"</td>
             </td> <input type="hidden" name="update" value="yes"></td>
             <input type="hidden" name="adminmail" value="<%=adminmail%>">
                                  <td><input type="submit" id="buy-button" value="Add Product"></td>
             </tr>
        </table>
        </form>
        </div>
    </center>
   <%
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>