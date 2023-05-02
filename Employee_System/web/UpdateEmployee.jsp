<%-- 
    Document   : UpdateEmployee
    Created on : Nov 19, 2022, 9:27:57 AM
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
                background-image: url(addallow2.jpg);
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
    <body bgcolor="Plum">
       
    <center>
        <h1><i><span>EMPLOYEE MANAGEMENT SYSTEM</span></i></h1>
        <%@page import="java.sql.*"%>
        <%
            String Eid=request.getParameter("id");
           try
            {
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver"); 
                  
                Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol","root","");
               
                Statement st=con.createStatement();
                
                String sql="select * from EmployeeRegister where ID="+Eid;
                
                rs  =  st.executeQuery(sql);
          %>
          
          
          <%
            while(rs.next())
            {
            %>
            
            <h1><u>UPDATE YOUR DETAILS</u></h1>
            <br>
            
            <form action="updateInfo.jsp">
                 <table border="0">
                    
                    <tbody>
                        <tr>
                            <td><input type="hidden" name="eid1" value="<%=rs.getString("ID")%>" /></td>
                        </tr>
                        <tr>
                            <td>Employee Id:</td>
                            <td><input type="text" name="eid2" value="<%=rs.getString("ID")%>" /></td>
                        </tr>
                        <tr>
                            <td>First name:</td>
                            <td><input type="text" name="fname" value="<%=rs.getString("FName")%>" /></td>
                        </tr>
                        <tr>
                            <td>Middle Name:</td>
                            <td><input type="text" name="mname" value="<%=rs.getString("MName")%>" /></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td><input type="text" name="lname" value="<%=rs.getString("LName")%>" /></td>
                        </tr>
                        <tr>
                            <td>Department:</td>
                            <td><input type="text" name="dept" value=" <%=rs.getString("Dept")%>" /></td>
                        </tr>
                        <tr>
                            <td>Position :</td>
                            <td><input type="text" name="pos" value="<%=rs.getString("Pos")%>"/></td>
                        </tr>
                        <tr>
                            <td>Salary :</td>
                            <td><input type="text" name="sal" value="<%=rs.getString("Salary")%>"/></td>
                        </tr>
                    </tbody>
                </table>
                        <br>
                        <input class="btn" type="submit" value="UPDATE INFO" />

                
                
            </form>
    </center>
            
          <%  
            }
              con.close();
            }
            catch(Exception e)
            {
                System.out.print(e);
            }
            %>
        

            
    </body>
</html>
