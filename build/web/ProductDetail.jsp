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
        
        <title>JSP Page</title>
        
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
           <%@ include file="Navbar.jsp" %>
    <style>
        #details-box{
            display: flex;
            flex-wrap:wrap;
            justify-content: center;
            background-color: white;
            width:90%;
            
            margin-top:7%;
            border-radius: 2%;
            box-shadow: 2px 7px 10px rgba(247, 0, 124, 0.5);
        }
        #detail-inner{
           text-align: left;
           margin:7%;
           
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
    
         double discountpercent=Double.parseDouble(rs.getString(6));
      double price=Double.parseDouble(rs.getString(5));
       double discount=Math.round(price-((discountpercent/100)*price));
       
       String stockS=rs.getString(8);
       int stock=Integer.parseInt(stockS);
       String gender=rs.getString(7);
       String functionalities=rs.getString(9);
       String img1=rs.getString(11);
       String img2=rs.getString(12);
       String img3=rs.getString(13);
       
       
      
       %>
    <center>
        <div id="details-box">
            <div id="detail-inner">
                
                <img src="<%=img1%>" id="top-img">
                <br>
                <button id="below" onclick='change(1)'
                        style="   
                        width:100px; height: 100px; 
                        background-image: url('<%=img1%>');
                        background-size:cover;">
                </button>
            
                <button id="below" onclick='change(2)'
                        style="
                        width:100px; height: 100px; 
                        background-image: url('<%=img2%>');
                        background-size:cover;">
                </button>
                 
                <button id="below" onclick='change(3)'
                        style="
                        width:100px; height: 100px; 
                        background-image: url('<%=img3%>');
                        background-size:cover;">
                </button>
                
            </div>
            <div id="detail-inner" style="line-height:40px;">
                <table>
                    <tr>
                        <td colspan="2"><h1><%=productName%></h1></td>
                    </tr>
                    <tr>
                        <td> Brand </td><td> <%=brandName%> </td>
                    </tr>
                    <tr>
                        <td> For  </td><td> <%=gender%>  </td>
                    </tr>
                    <tr>
                        <td>Price   </td> <td><p><span style="text-decoration:line-through;"><%=price%></span><span style="color:green;"> <%=discount%></span></p></td>
                    </tr>
                    <tr>
                        <td>Stock </td>
                        <td>
                            <%if(stock>0) 
                                out.println("Available");
                              else
                                out.println("Out of Stock");
                            %>
                        </td>
                    </tr>
                    <tr>
                        <td>Details</td>
                    </tr>
                    <tr>
                        <td colspan="4" style="width:100%;"><%=functionalities%></td>
                    </tr>
                    
                    <tr>
           <form action="/E-commerce/BuyOrAddCart">
                        <td> 
                            <input type="hidden" name="usermail" value="<%=usermail%>">
                            <input type="hidden" name="productId" value="<%=productId%>"> 
                            <%
                                if(stock>0)
                                {%>
                               <input type="submit" id="buy-button" name="status" value="Buy-Now">   
                        </td>
                        <td>
                           
                            
                                 <%}
                                else
                                {
                                 %>
                               <input type="none" id="buy-button" name="status" value="Sorry can't Buy-Now">
                        </td>
                                                    
                              <%  }
                                %>
                        
           </form>
                    </tr>
                   
                </table>
            </div>
        </div>
    </center>
   
    </body>
 
    <script>
        function change(No)
        {
            //document.getElementById("i").innerHTML="hi";
            if(No==1)
            {
                document.getElementById('top-img').src="<%=img1%>";
            }
            if(No==2)
            {
                document.getElementById('top-img').src="<%=img2%>";
            }
            if(No==3)
            {
                document.getElementById('top-img').src="<%=img3%>";
            }
            }
    </script>
       <%
        }
    }
    catch(Exception e)
    {
      out.println(e);
    }
    %>
</html>
