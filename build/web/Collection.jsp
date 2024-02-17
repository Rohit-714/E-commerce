<%@page import="java.sql.*;" %>
<%@page import="java.io.*;"  %>
<html>
    <head>
    
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
           <%@ include file="Navbar.jsp" %>
        
    <br><br><br>
    <br><br><br>
    </head>
    <body>
        
    
         
        <%
            String category=request.getParameter("category");
            String brandurl=request.getParameter("brand");
            String search_value=request.getParameter("search-value");
            String discounturl=request.getParameter("discount");
            String priceurl=request.getParameter("price");
            //  Blob image = null;
             if(category!=null)
     {%>
    <center> <h1><%=category%></h1></center>
    <%}
else if(brandurl!=null)
     {%>
    <center><h1><%=brandurl%></h1></center>
       <%}
else if(discounturl!=null)
{%>
    <center><h1>Big Discount on Deals</h1></center>
    <%}
else if(priceurl!=null)
{
%>
    <center><h1>Budget Friendly Deals</h1></center>
    <%
        }
else {%>
    <center><h1>Search Result</h1></center>
<%}%>
<div id="collection-view">    
           <%
               ResultSet rs=null;
               ResultSet rs1=null;
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abhidb?useSSL=false","root","root");
                Statement st=con.createStatement();
                PreparedStatement ps=null;
                if(( category!=null))
                { 
                 ps=con.prepareStatement("select * from Products where category = '"+category+"'");
                } else if(brandurl!=null)
                {
                 ps=con.prepareStatement("select * from Products where brand = '"+brandurl+"'");
                }
                else if(discounturl!=null)
                {
                 ps=con.prepareStatement("select * from products where discount>'"+discounturl+"'");
                }
                else if(priceurl!=null)
                {
                 ps=con.prepareStatement("select * from products where price<'"+priceurl+"'");
                }
                else{
                 ps=con.prepareStatement("select * from Products where brand = '"+search_value+"'"); 
                rs1=ps.executeQuery();
                if(rs1.next()==false)
                {
                    ps=con.prepareStatement("select * from Products where category = '"+search_value+"'");
                    rs1=ps.executeQuery();
                  if(rs1.next()==false)
                  {
                  ps=con.prepareStatement("select * from products where productName= '"+search_value+"'"); 
                  rs1=ps.executeQuery();                 
                  }
                }
                }
                 rs=ps.executeQuery();
                
   while(rs.next())
   {
/*	  Blob b=rs.getBlob(2);
	  byte br[]= b.getBytes(1,(int)b.length());
          int size=0;
	  InputStream si=rs.getBinaryStream(2);
           response.reset();
	   response.setContentType("image/jpeg");
while((size=si.read(br))!= -1 ){
response.getOutputStream().write(br,0,size);
}*/
      
       String brand=rs.getString(2);
            
          double discountpercent=Double.parseDouble(rs.getString(6));
      double price=Double.parseDouble(rs.getString(5));
       double discount=Math.round(price-((discountpercent/100)*price));
       
       int productIdd=Integer.parseInt(rs.getString(10));
                    
              %>
              
               <div id="items">
                    <a href="ProductDetail.jsp?usermail=<%=usermail%>&productId=<%=productIdd%>"
                    <center>
                 
                     <img id="img" src="<%=rs.getString(11)%>" alt="orange tree" >
                       <p><%=brand%></p>
                     <h3 id="MRP">Rs.<%=price%> </h3>
                     <p style="font-size:15px;"><strong style="font-size:20px; color:rgba(44, 230, 17, 1);">Rs.<%=discount%> </strong><%=discountpercent%>% off</p>
                      
                    </center>
                </a>
                </div>
             
                          
              
            
 <%
     
        }   
%>
        </div>

        <%
  }
  catch(Exception e)
  {
  System.out.println(e);
  }
            %>              
    </body>
</html>
