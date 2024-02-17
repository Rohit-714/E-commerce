<%-- 
    Document   : Navbar
    Created on : 20 Mar, 2023, 5:33:46 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usermail=request.getParameter("usermail");
    String productId=request.getParameter("productId");
%>

<link rel="stylesheet" href="css147.css">
<style>
   
</style>
<center>
    <nav>
        <table>
            <tr>
                <td>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV4Y8&usqp=CAU" style="  margin-bottom:-20px;margin-left:10px; height:60px; width:60px;">
                </td>
                <td>
                  <a href="index.jsp?usermail=<%=usermail%>&productId=<%=productId%>">Home</a>
                </td>
                <td>
                  <a href="Collection.jsp?usermail=<%=usermail%>&discount=20">Big Discounts</a>
                  <a href="Collection.jsp?usermail=<%=usermail%>&category=jeans">Jeans</a>
                </td>
                <td>
                  <a href="Collection.jsp?usermail=<%=usermail%>&category=T-shirt">T-Shirts</a>
                </td> 
                <td>
                    <a href="Collection.jsp?usermail=<%=usermail%>&price=800">Budget friendly</a>
                </td>
                <td>
                    <%if(usermail==null || usermail.equals("null")){%>
                    <a href="LoginUser.jsp">Sign in/Sign up</a>
                    <%}
                    else{%>
                    <a href="OrderDetails.jsp?usermail=<%=usermail%>">My Orders</a>
                    <%}%>
                </td>
                <td>
        <form action="Collection.jsp">
        <input type="text" placeholder="Search" size="60" name="search-value" id="search-value">
        <input type="submit" style="width:80px; border-radius:5px;border:none; padding:6px; color:white;background-color: black;" value="search">
        </form>
                </td>
        </tr>
        </table>
    </nav>
         </center>


