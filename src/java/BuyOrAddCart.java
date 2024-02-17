/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class BuyOrAddCart extends HttpServlet {

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        String status=request.getParameter("status");
        String usermail=request.getParameter("usermail");
        String productId=request.getParameter("productId");
       if(!usermail.equals("null"))
       {
           if(status.equals("Buy-Now"))
        {
            response.sendRedirect("Billing.jsp?usermail="+usermail+"&productId="+productId);
            
        }
        else if(status.equals("Add-Cart"))
        {
            response.sendRedirect("index.jsp");
        }
       }
       else
       {
           response.sendRedirect("LoginUser.jsp?productId="+productId);
       }
    }  
}
