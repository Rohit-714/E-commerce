    <%@ page import="java.io.*"%>
  <%@ page import="java.sql.*"%>
  <%@ page import="java.util.*"%>
  <%@ page import="javax.servlet.*"%>
  <%@ page import="javax.servlet.http.*"%>

<html>
    <head>
          
        <link rel="stylesheet" href="css145.css">
        
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<%@include file="AdminNavbar.jsp"%>
    </head>
    <br><br><br>
    <style>
        
    </style>
    <body>
       
<% 
//Blob image = null;
Connection con = null;
Statement stmt = null;
ResultSet rs = null;
String query1=null;
String query2=null;

try {
     Class.forName("com.mysql.jdbc.Driver");
     con =DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
     stmt = con.createStatement();
    
     String update=request.getParameter("update");
     String productImg1=request.getParameter("image-1");
     String productImg2=request.getParameter("image-2");
     String productImg3=request.getParameter("image-3");
   
  //   String adminmail=request.getParameter("adminmail");
     String productName=request.getParameter("Name");
     String brandName=request.getParameter("brand");
     String sizes=request.getParameter("sizes");
     String category=request.getParameter("category"); 
     String price=request.getParameter("price");
      
     String discount=request.getParameter("discount");
      
     String gender=request.getParameter("gender");
     String stock=request.getParameter("stock");
     out.println(request.getParameter("productId"));
       
     String productId=request.getParameter("productId");
      
     String detail=request.getParameter("detail");
     productImg1=productImg1.trim();
     productImg2=productImg2.trim();
     productImg3=productImg3.trim();
     productName=productName.trim();
     brandName=brandName.trim();
     sizes=sizes.trim();
     category=category.trim();
     gender=gender.trim();
     detail=detail.trim();
   if(update!=null)
   {
            
       query1="update products set productName='"+productName+"',brand='"+brandName+"',sizes='"+sizes+"',category='"+category+"',price="+price+",discount="+discount+",gender='"+gender+"',stock="+stock+",detail='"+detail+"',img_1='"+productImg1+"',img_2='"+productImg2+"',img_3='"+productImg3+"' where productid="+productId+"";

   }
   else{
              
   query1="insert into products (productName, brand, sizes, category ,price,discount,gender,stock,detail,img_1,img_2,img_3,adminid) values ('"+productName+"','"+brandName+"','"+sizes+"','"+category+"',"+price+","+discount+",'"+gender+"',"+stock+",'"+detail+"','"+productImg1+"','"+productImg2+"','"+productImg3+"','"+adminmail+"')"; 
   }
   
     stmt.executeUpdate(query1);
   
     if(update!=null)
       query2="select * from Products where productid='"+productId+"'";
       else
     query2="select * from products ORDER BY productid DESC";
     rs=stmt.executeQuery(query2);
    
    rs.next(); 
  %>     
    
  <br><br>
    <center>    
        <h2>Product Added Successfully</h2>
        <h3>Here are Details of product :</h3>
        <br>
        <div id="product-box">
            <div id="product-detail" style="width:30%;">
                <img src="<%=rs.getString(11)%>" id="big-pic">
            </div>
            <div id="product-detail">
                <table>           
                  <tr>
                      <td colspan="4" id="table-head"><h1><%=rs.getString(1)%></h1></td>
                  </tr>
 
                  <tr>
                      <td> <p id="que">Brand </p> </td> <td><p id="ans"><%=rs.getString(2)%></p></td>
                  
              
                     <td> <p id="que">Category</p> </td><td><p id="ans"><%=rs.getString(4)%></p></td>
                  </tr>
                  <tr>
                     <td> <p id="que">Price </p> </td> <td><p  id="ans"><%=rs.getString(5)%></p></td>
                     <td> <p id="que">sizes </p> </td> <td><p id="ans"><%=rs.getString(3)%></p></td>
                  </tr>
                  <tr>
                      <td> <p id="que">stock</p></td>  <td><p id="ans"><%=rs.getString(8)%></p></td>
                      <td><p id="que">Product ID</p></td><td><p id="ans"><%=rs.getString(10)%></p></td>
                  </tr>
                  <tr>
                      <td><p id="que">Gender</p></td><td><p id="ans"><%=rs.getString(7)%></p></td>
                      <td><p id="que">Discount %</p></td><td><p id="ans"><%=rs.getString(6)%></p></td>
                  </tr>
                  <tr>
                      <td colspan="4"><h3><%=rs.getString(9)%></td></h3>
                  </tr>
                  <tr>
                      <td colspan="2"> <a href="AddProduct.jsp?adminmail=<%=adminmail%>" id="add-button">Go back</a></td>
                  </tr>
               </table>
            </div>
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