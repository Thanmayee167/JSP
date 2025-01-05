<%-- 
    Document   : home
    Created on : 05-Jan-2025, 12:49:24 pm
    Author     : saithanmayeebukkittu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add numbers</title>
    </head>
    <body>
    	<%
    		int i = Integer.parseInt(request.getParameter("num1"));
    		int j = Integer.parseInt(request.getParameter("num2"));
    		int sum = i + j;

    		out.println("Sum of two numbers is " + sum);
    	%>
    </body>
    </body>
</html>