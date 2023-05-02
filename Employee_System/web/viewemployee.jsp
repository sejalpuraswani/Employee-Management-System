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
    <body bgcolor="thistle">
        
       <%@page import = "java.sql.*"%>
    <center>
        <h1><i><span>EMPLOYEE MANAGEMENT SYSTEM</span></i></h1>
        <%
            try
            {
               
            String eid=request.getParameter("id");
            ResultSet rs=null;
            
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol","root","");
                Statement st = con.createStatement();
                String sql = "select * from EmployeeRegister where ID= "+eid;
                rs=st.executeQuery(sql);
                %>
                <table border="0">
                    
                            
                        
                        <%
                            while(rs.next())
                            {
                                %>
                                
                                <h1><u>Employee Details<u></h1>
                                <br><br>
                                <tr> <td><h2><i>Employee ID:-</i></h2></td> <td><h3><i><%=rs.getString("ID")%></i></h3></td></tr>
                                <tr><td><h2><i>Employee name:-</i></h2></td><td><h3><i><%=rs.getString("Fname")%></i></h3></td><td><h3><i><%=rs.getString("Mname")%></i></h3></td><td><h3><i><%=rs.getString("Lname")%></i></h3></td></tr>
                                <tr><td><h2><i>Department:-</i></h2></td> <td><h3><i><%=rs.getString("Dept")%></i></h3></td>
                             <tr><td><h2><i>Position:-</i></h2></td> <td><h3><i><%=rs.getString("Pos")%></i></h3></td>
                             
                        </tr>
                  
            <%
            }
           
                con.close();
}
            catch(Exception e)
            {
                System.out.println(e);
            }
            




            %>
            </tbody>
                </table>
            <form action="employeelist.jsp">
                <input class="btn" type="submit" value="Back to Employee List" />
            </form>
            

    </body>
</html>
