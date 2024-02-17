<%-- 
    Document   : LoginAdmin
    Created on : 4 May, 2023, 4:32:21 PM
    Author     : DELL
--%>
<%@page import="java.sql.*"%>
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
        <%
    String adminmail=request.getParameter("adminmail");
    String password=request.getParameter("password");
   
       %>
    <body>
        <br><br>
     <center>
        <div id="outerbox">
            
            <div id="innerbox-2">
              
            </div>
            
            <div id="innerbox-1">
                            <center><h1>Login Your Self</h1></center>
                            <form>
                <table>
                    <tr>
                        <td><h2>E-mail</h2></td><td><input type="email" name="adminmail"></td>
                    </tr>
                   
                    <tr>
                        <td>
                            <h2>Password</h2></td><td><input type="password" name="password">
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"> <center><input type="submit" id="addcart-button" style="background-color: red;" value="Login" name="register"></center></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                    <center>   <h3><a href="RegisterAdmin.jsp">  Dont have an account?Register here</a></h3></center>
                        </td>
                    </tr>
                </table>
                        
                         </form>
            </div>
        </div>
    </center>
<%   
    
    if(adminmail!=null)
    {
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
        Statement st=con.createStatement();
        String query="select * from adminDetails where adminid='"+adminmail+"' and password='"+password+"'";
        ResultSet rs=st.executeQuery(query);

        if(rs.next())
        {
         response.sendRedirect("AddProduct.jsp?adminmail="+adminmail);         
        }
        else{
           %>
    <center> <h2>Incorrect password/e-mail.</h2></center>
    <%
        }
        }
        catch(Exception e)
        {
        out.println(e);
        }
       }
    %>
    
    </body>
</html>
