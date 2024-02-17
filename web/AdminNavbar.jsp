<%-- 
    Document   : AdminNavbar
    Created on : 4 May, 2023, 5:06:45 PM
    Author     : DELL
--%>
<html
    <head>

<link rel="stylesheet" href="css147.css">
<style>
   
</style>
<%
    String adminmail=request.getParameter("adminmail");
    
%>
<center>
    <nav>
        <table>
            <tr>
                <td>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV4Y8&usqp=CAU" style="  margin-bottom:-20px;margin-left:10px; height:60px; width:60px;">
                </td>
                <td>
                  <a href="AddProduct.jsp?adminmail=<%=adminmail%>">Home</a>
                </td>
                <td>
                  <a href="AllProduct.jsp?adminmail=<%=adminmail%>&order=all">All Products</a>
                  
                </td>
                
                <td>
                    <a href="AllProduct.jsp?adminmail=<%=adminmail%>&order=your">Update Product</a>
                </td>
                <td>
                 <%if(adminmail==null)
                 {%>
                    <a href="LoginAdmin.jsp">Sign in/Sign up</a>
                 <%}
                 else
                  {%>
                   <a href="MyOrder.jsp?adminmail=<%=adminmail%>">Your Orders</a>
                 <%  }%>

                </td>
                <td>
       
              
                </td>
        </tr>
        </table>
    </nav>
         </center>
</head>
                <body></body>
</html>


