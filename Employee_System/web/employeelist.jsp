<%-- 
    Document   : viewstudent
    Created on : Oct 20, 2022, 8:16:02 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .btn{
    
    font-size: 15px;
    padding: 4px 4px;
    border-radius: 12px;
    font-weight: 500;
    min-height:30px; 
    min-width: 160px;
    color:#2B3467;
    background-color: white;
    border: 2px solid #2B3467;
    
    
}
            
            body{
                background-image: url(hello.png);
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
    <body bgcolor="thistle">
       
       <%@page import=" java.sql.*"%>
    <center>
        <h1><i><span>EMPLOYEE MANAGEMENT SYSTEM</span></i></h1>
        
 <%
try{
 Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol","root","");
Statement st=con.createStatement();
String sql ="select * from EmployeeRegister";
ResultSet rs= st.executeQuery(sql);
%>

<table border="1" cellspacing="5">
    <thead>
<tr>
<td>Employee ID</td>
<td>First name</td>
<td>Middle Name</td>
<td>Last Name</td>
<td>Department</td>
<td>position</td>
<td>salary</td>
<td>Action</td>
<td>Action</td>
<td>Action</td>
</tr>
    </thead>
    <tbody>
<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString("ID") %></td>
<td><%=rs.getString("FName") %></td>
<td><%=rs.getString("MName") %></td>
<td><%=rs.getString("LName") %></td>
<td><%=rs.getString("Dept") %></td>
<td><%=rs.getString("Pos") %></td>
<td><%=rs.getString("Salary") %></td>
<td><a href="viewemployee.jsp?id=<%=rs.getString("ID") %>">VIEW DATA</a></td>
<td><a href="UpdateEmployee.jsp?id=<%=rs.getString("ID") %>">UPDATE DATA</a></td>
<td><a href="DeleteEmployee.jsp?id=<%=rs.getString("ID") %>">DELETE DATA</a></td>
</tr>
    </tbody>
<%
}
con.close();
} catch (Exception e)
{
e.printStackTrace();
}
%>

</table>
<form action="Suggest.jsp">
    <br>
    <input class="btn" type="submit" value="Back To HomePage" />
    
</form>



    </center>

    </body>
</html>
