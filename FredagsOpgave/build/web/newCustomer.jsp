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
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcexerise", "admin", "aergvOCh2202");
    Statement st = con.createStatement();
    try
    {
        Class.forName("com.mysql.jdbc.Driver");

        String query = "INSERT INTO customers VALUES (" + cno + "," + cname + "," + strt + "," + zp + "," + phn + ")";
        st.executeUpdate(query);

    } catch (Exception ee)
    {
        out.print("Error: " + ee);
    } finally
    {
        st.close();
        con.close();
    }


%>
