<%-- 
    Document   : newCustomer
    Created on : 25-09-2015, 13:49:47
    Author     : Kristian
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>


<%
    String cno = request.getParameter("customerNumber");
    String cname = "'" + request.getParameter("customerName") + "'";
    String strt = "'" + request.getParameter("street") + "'";
    String zp = request.getParameter("zip");
    String phn = request.getParameter("phone");
    
    String query = "INSERT INTO customers VALUES ("+cno+","+cname+","+strt+","+zp+","+phn+")";
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcexerise", "Kristian", "mauw2855");
    Statement st = con.createStatement();
    st.executeUpdate(query);
    
%>