<%-- 
    Document   : Registration
    Created on : 1 Mar, 2023, 2:18:56 PM
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
    </head>
    <style>
      
    </style>
    <body>
        <br><br>
        <%
          String productIds=request.getParameter("productId");
          %>
    <center>
      
        <div id="outerbox">
            
            <div id="innerbox-2">
              
            </div>
            
            <div id="innerbox-1">
                            <center><h1>Register Your Self</h1></center>
                            <form>
                <table>
                    <tr>
                        <td> <h2>Name</h2> </td><td><input type="text" name="name" required="required"> </td>
                    </tr>
                    <tr>
                        <td><h2>E-mail</h2></td><td><input type="email" name="usermail" required="required"></td>
                    </tr>
                    <tr>
                        <td><h2>Mobile No.</h2></td><td><input type="text" name="number" required="required"></td>
                    </tr>
                    <tr>
                        <td><h2>Address</h2></td><td><textarea cols="27" rows="2" name="address" required="required"></textarea></td> 
                    </tr>
                    <tr>
                        <td><h2>Password</h2></td><td><input type="password" name="password" required="required"></td>
                    </tr>
                    <tr>
                        <td colspan="2"> <center><input type="submit" id="addcart-button" style="background-color: red;" value="Register" name="register"></center></td>
                    </tr>
                </table>
                                <input type="hidden" name="productId" value="<%=productId%>">
                         </form>
            </div>
        </div>
    </center>
    </body>
    <%
    String name=request.getParameter("name");
    String email=request.getParameter("usermail");
    String number=request.getParameter("number");
    String address=request.getParameter("address");
    String password=request.getParameter("password");
  
    
    if(name!=null)
    {
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
        Statement st=con.createStatement();
        String query="insert into UserDetails values('"+name+"','"+email+"','"+number+"','"+address+"','"+password+"')";
        st.executeUpdate(query);
        con.close();
        if(productIds.equals("null"))
        {
        response.sendRedirect("index.jsp?usermail="+usermail);
        }
        else{
        response.sendRedirect("Billing.jsp?usermail="+usermail+"&productId="+productIds);
        }
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
    %>
</html>
