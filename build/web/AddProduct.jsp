<%-- 
    Document   : AddProduct
    Created on : 30 Jan, 2023, 5:03:55 PM
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
        <link ref="stylesheet" href="css147.css">
        <%@include file="AdminNavbar.jsp"%>
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
    </head>
    <body>
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
                <td><input type="text" placeholder="Enter product Image Link" name="image-1"></td>
                 
                
                <td><h3>Add Image No.2</h3></td>
                <td><input type="text" placeholder="Enter product Image Link" name="image-2"></td>
            </tr>
            <tr>
                <td><h3>Add Image No.3</h3></td>
                <td><input type="text" placeholder="Enter product Image Link" name="image-3"></td>
       
                <td><h3>Enter Product Name</h3></td>
                <td><input type="text" placeholder="Product Name" name="Name"></td>
             </tr>
             <tr>
                <td><h3>Enter Brand Name</h3></td>
                <td><input type="text" placeholder="Brand" name="brand"></td>
             
                <td><h3>Price</h3></td>
                <td><input type="text" placeholder="Price" name="price"></td>
             </tr>
             <tr>
                <td><h3>Discount</h3></td>
                <td><input type="text" placeholder="Discount %" name="discount"></td>
             
                <td><h3>Sizes</h3></td>
                <td> <input type="text" placeholder="Sizes" name="sizes"></td>
                </tr>
             <tr>
                <td><h3>Stock Available</h3></td>
                <td> <input type="text" placeholder="Stock" name="stock"></td>
        
                <td><h3>Gender</h3></td>
                <td><input type="text" placeholder="Gender" name="gender"></td>
            </tr>
             <tr>
                <td><h3>Category</h3></td>
                <td><input type="text" placeholder="category" name="category"></td>
          
             </tr>
             <tr><td></td>
                 <td >
                     <textarea name="detail"placeholder="Enter Some Details" style=" font-size:18px; width:550px; height: 50px;"></textarea>
                 </td>
             
                 <input type="hidden" value="<%=adminmail%>" name="adminmail">
                 <td><input type="submit" id="buy-button" value="Add Product"></td>
             </tr>
        </table>
        </form>
        </div>
    </center>
   
    </body>
</html>
