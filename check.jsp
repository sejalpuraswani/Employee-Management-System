<%-- 
    Document   : check
    Created on : Oct 16, 2022, 11:29:24 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            span{
                background-color: grey;
                color: burlywood;
            }
        </style>
    </head>
    <body bgcolor="plum">
    <center>
        <h1><i><span>PAYROLL MANAGEMENT SYSTEM</span></i></h1>
        <%
            String u=request.getParameter("username");
            String p=request.getParameter("password");
            if(u.equalsIgnoreCase("Sejal")&& p.equals("1234"))
            {
                response.sendRedirect("Suggest.jsp");
            }
            else
            {
                response.sendRedirect("invaliduser.jsp");
            }
            %>
    </body>
    </center>
</html>
