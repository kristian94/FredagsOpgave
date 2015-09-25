<%-- 
    Document   : newCustomer
    Created on : 25-09-2015, 13:49:47
    Author     : Kristian
--%>

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
    int cno = request.getParameter();
    String cname;
    String street;
    int zip;
    String phone;
%>