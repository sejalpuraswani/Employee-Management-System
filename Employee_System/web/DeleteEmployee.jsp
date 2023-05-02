<%-- 
    Document   : DeleteEmployee
    Created on : Nov 19, 2022, 4:36:35 PM
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
        <h1><i><span>EMPLOYEE MANAGEMENT SYSTEM</span></i></h1>
        <%@page import=" java.sql.*"%>                  
        <%String id=request.getParameter("id");               
        try           
        {    
            Class.forName("com.mysql.jdbc.Driver"); 
            Statement st=null; 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol","root",""); st=con.createStatement(); 
            String sql="delete from EmployeeRegister where id="+id; 
            st.executeUpdate(sql);        
            con.close(); 
        }
        catch (Exception e) 
        { 
           e.printStackTrace();
        } 
          response.sendRedirect("employeelist.jsp");
        %> 
    </center>
    </body>
</html>
