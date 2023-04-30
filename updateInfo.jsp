<%-- 
    Document   : updateInfo
    Created on : Dec 1, 2022, 8:24:48 PM
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
        
        <h1><i><span>EMPLOYEE MANAGEMENT SYSTEM</span></i></h1>
        <%@page import=" java.sql.*"%>   
        <%String id1=request.getParameter("eid1"); 
            String id2=request.getParameter("eid2"); 
            String n1=request.getParameter("fname"); 
            String n2 =request.getParameter("mname"); 
            String n3 =request.getParameter("lname"); 
            String d =request.getParameter("dept"); 
            String p =request.getParameter("pos"); 
            String s =request.getParameter("sal"); 
             
           
            try 
            { 
                Class.forName("com.mysql.jdbc.Driver"); 
                PreparedStatement pst=null; 
 
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll","root",""); 
                String sql="update EmployeeRegister set Fname=?, Mname=?, Lname=?, ID=?, Dept=?, Pos=?, Salary=? where ID="+id1; 
                pst=con.prepareStatement(sql); 
                pst.setString(1, n1); 
                pst.setString(2, n2); 
                pst.setString(3, n3); 
                pst.setString(4, id2); 
                pst.setString(5, d); 
                pst.setString(6, p); 
                pst.setString(7, s); 
  
                int i=pst.executeUpdate(); 
                if(i>0) 
                 { 
                     out.print("data update successfully......"); 
                 }                
                else 
                 { 
      
                   out.print("data cant update successfully......");     
      
                 } 
          
          
                   con.close(); 
            } 
             catch (Exception e) 
             { 
                e.printStackTrace(); 
             } 
               response.sendRedirect("employeelist.jsp");
                %> 
    </body>
</html>
