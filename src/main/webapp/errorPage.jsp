<%-- 
    Document   : errorPage
    Created on : 05-Jan-2025, 4:20:26 pm
    Author     : saithanmayeebukkittu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Error Page</title>
    </head>
    <body>
        <h1>Error Occurred</h1>

        <p>Sorry, an error occurred while processing your request.</p>

        <p>Error details:</p>
        <pre>
        Exception: <%= exception%><br>
        Message: <%= exception.getMessage()%><br>
        Exception Type: <%= exception.getClass().getName()%><br>
        URI: <%= request.getAttribute("javax.servlet.error.request_uri")%><br>
        </pre>
    </body>
</html>
