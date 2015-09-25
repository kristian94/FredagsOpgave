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
        <title>New Order</title>
    </head>
    <body>
    </body>
</html>


<%
    String ono = request.getParameter("Ordernumber");
    String pno = "'" + request.getParameter("Partnumber") + "'";
    String qty = "'" + request.getParameter("Quantity") + "'";
    String cno = request.getParameter("Customernumber");
    String eno = request.getParameter("Employenumber");
    String received = request.getParameter("Received");
    String shipped = request.getParameter("Shipped");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcexerise", "admin", "aergvOCh2202");
    Statement st = con.createStatement();
    try
    {
        Class.forName("com.mysql.jdbc.Driver");

        String query = "INSERT INTO odetails VALUES (" + ono + "," + pno + "," + qty + ")" +
                "INSERT INTO orders VALUES (" + ono + "," + cno + "," + eno + "," + received + "," + shipped + ")";
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