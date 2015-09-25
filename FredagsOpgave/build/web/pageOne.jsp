<%-- 
    Document   : pageOne
    Created on : 25-09-2015, 12:47:50
    Author     : Kristian
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employees</title>
    </head>
    <body>
        <form action="index.html">
            <button>
                return
            </button>
            
        </form>
        <h1>Employees:</h1>
        <table style="width:100%">
            <tr>
                <td></td>
            </tr>
        </table>
    </body>
</html>
<%
    String query = "SELECT * FROM EMPLOYEES";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcexerise", "Kristian", "mauw2855");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery(query);
    out.print("eno - ename - zip - hdate <BR>");
    while(rs.next()){
        out.print(rs.getInt(1)+ " - ");
        out.print(rs.getString(2)+" - ");
        out.print(rs.getInt(3)+" - ");
        out.print(rs.getDate(4)+"<BR>");
        
    }
%>

