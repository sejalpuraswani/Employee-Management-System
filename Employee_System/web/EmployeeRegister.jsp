<%-- 
    Document   : EmployeeRegister
    Created on : Oct 20, 2022, 6:07:16 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-image: url(viewemployee1.jpg);
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            span{
                background-color: aliceblue;
                color: gray;
            }
        </style>
    </head>
    <body bgcolor="plum">
        
        <%@page import = "java.sql.*"%>
    <center>
        <h1><i><span>EMPLOYEE MANAGEMENT SYSTEM</span></i></h1>
        <%
            String name1 = request.getParameter("nm1");
            String name2 = request.getParameter("nm2");
            String name3 = request.getParameter("nm3");
            String i1 = request.getParameter("id");
            String deptt = request.getParameter("dept");
            String poss = request.getParameter("pos");
            String salary = request.getParameter("sal");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol","root","");
                Statement st = con.createStatement();
                String sql = "Insert into EmployeeRegister(Fname,Mname,Lname,ID,Dept,Pos,Salary)values('"+name1+"','"+name2+"','"+name3+"','"+i1+"','"+deptt+"','"+poss+"','"+salary+"')";
                st.executeUpdate(sql);
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
                
            }
            response.sendRedirect("employeelist.jsp");
            
            


            %>
    </center>
        
    </body>
</html>
