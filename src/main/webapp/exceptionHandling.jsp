<%-- 
    Document   : exceptionHandling
    Created on : 05-Jan-2025, 4:57:55 pm
    Author     : saithanmayeebukkittu
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Exception Handling in JSP</title>
    </head>
    <body>
        <h1>JSP Exception Handling Example</h1>

        <p>This page will simulate an exception.</p>

        <%
            // Simulate an exception for demonstration purposes
            String value = null;
            int length = value.length(); // This will throw a NullPointerException
        %>

        <p>End of the page.</p>
    </body>
</html>

