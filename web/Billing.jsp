<%-- 
    Document   : ProductDetail
    Created on : 25 Feb, 2023, 1:18:45 PM
    Author     : DELL
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
           <%@ include file="Navbar.jsp" %>
    <style>
        #details-box{
            display: flex;
            flex-wrap:wrap;
            justify-content: center;
            background-color: rgba(200,247,255,0.2);
            width:80%;
          
            
            border-radius: 2%;
            box-shadow: 2px 7px 10px rgba(247, 0, 124, 0.5);
        }
        #detail-inner{
           text-align: left;
           margin:2%;
           
           font-size:20px;
           border-style: solid;
           border:2px;
        }
        #detail-inner img{
           width:310px;
           height:300px;
           margin-bottom: 1%;
        }
        #below-img-1{
            width:100px;
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV
                         4Y8&usqp=CAU");
            background-size: cover;
        }
        #below-img-2{
            width:100px;
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV
                         4Y8&usqp=CAU");
        }
        #below{
            width:100px;
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-tr8SZzT37CfyXhaS9uewFZffgTYyoUhYEe7mtd4zvUaPy5w4mcQLL4Vxtggn40qV
                         4Y8&usqp=CAU");
        }
    </style>

</head>
<br>
<body>
    <%
        try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
       Statement st=con.createStatement();         
      
       String query="select * from Products where productId="+productId;
       ResultSet rs=st.executeQuery(query);
       if(rs.next())
       {
       String productName=rs.getString(1);
       String brandName=rs.getString(2);
       
       String img1=rs.getString(11);
       double discount=Double.parseDouble(rs.getString(6));
      double price=Double.parseDouble(rs.getString(5));
       double newPrice=Math.round(price-((discount/100)*price));
      
       double deliveryCharge=40;
       double totalAmount=Math.round(newPrice+deliveryCharge);
       

        String queryUserDetails="select * from userDetails where email='"+usermail+"'";
        String queryProductDetails="select * from Products where productId='"+productId+"'";
        ResultSet rs1=st.executeQuery(queryUserDetails);
        String address=new String();
        if(rs1.next())
        {
         address=rs1.getString(4); 
        }
       %>
       <br><br><br>
       
<center><h1>Order Details</h1></center>
    <center>
        <div id="details-box">
            
            <div id="detail-inner" style="line-height:20px;">
                  
                <img src="<%=img1%>" id="top-img">
          
            <table>
           
                <tr>
                    <td>Order By</td> <td><p><%=usermail%><p></td>
                </tr>
         
                <tr>
                                                <form action="OrderDetails.jsp">
                    <td>Delivery Address</td><td><input type="text" name="address" value="<%=address%>"></td>
                </tr>
                <tr>
                  <td>Payment mode</td>
                  <td><h4>Payment on Delivery</h4>
          
                  </td>
                </tr>
           
            </table>
           
            </div>
            <div id="detail-inner" style="line-height:30px; border-style: zigzag;">
                <table>
                    <tr>
                        <td colspan="2"><h2><%=brandName%>'s  
                        <%=productName%></h2></td>
                    </tr>
                  
                    <tr>
                        <td>Price   </td> <td><%=price%></td>
                    </tr>
                    <tr>
                        <td>Discount</td> <td><%=discount%>%</td>
                    </tr>
                    <tr>
                        <td>After Discount</td><td><%=newPrice%></td>
                    </tr>
                    <tr>
                        <td>Delivery Charges&emsp;&emsp;</td><td><%=deliveryCharge%></td>
                    </tr>
                    <tr>
                        <td colspan="2"><hr> </td>
                    </tr>
                    <tr>
                    
                        <td>Total Amount in Rs.</td><td><%=totalAmount%></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Your Order Will be Delivered in Three Working Days.</h3>
                        </td>
                    </tr>
                    <tr>
           
                        <td> 

                            <input type="hidden" name="usermail" value="<%=usermail%>">
                            <input type="hidden" name="productId" value="<%=productId%>"> 

                            <input type="hidden" name="price"      value="<%=newPrice%>">
                            <input type="hidden" name="productName" value="<%=productName%>">      
                            
                            <input type="submit" id="buy-button" name="status" value="Confirm Order">
                            </form>
                        </td>
                      
        
                    </tr>
                   
                </table>
            </div>
        </div>
    </center>
   
    </body>
 
 
       <%
        }
    }
    catch(Exception e)
    {
      out.println(e);
    }
    %>
</html>
