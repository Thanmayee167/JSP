<%-- 
    Document   : implicitObjectsExample
    Created on : 05-Jan-2025, 4:16:02 pm
    Author     : saithanmayeebukkittu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>JSP Implicit Objects Example</title>
</head>
<body>

    <h1>Implicit Objects in JSP</h1>

    <!-- Using 'out' implicit object to print data -->
    <p><strong>Current Date and Time:</strong> <%= new Date() %></p>

    <!-- Using 'request' implicit object to display request information -->
    <p><strong>Request Method:</strong> <%= request.getMethod() %></p>
    <p><strong>Request URI:</strong> <%= request.getRequestURI() %></p>

    <!-- Using 'response' implicit object to set a custom response header -->
    <%
        response.setHeader("Custom-Header", "This is a custom header");
    %>

    <!-- Using 'session' implicit object to store session data -->
    <%
        session.setAttribute("user", "SaiThanmayee");
    %>
    <p><strong>User Name from Session:</strong> <%= session.getAttribute("user") %></p>

    <!-- Using 'application' implicit object to store application-wide data -->
    <%
        application.setAttribute("appName", "JSP Implicit Object Example");
    %>
    <p><strong>Application Name:</strong> <%= application.getAttribute("appName") %></p>

    <!-- Using 'config' implicit object to retrieve initialization parameters -->
    
    <p><strong>Init Param 'appName' from web.xml:</strong> <%= config.getInitParameter("appName") %></p>

    <!-- Using 'exception' implicit object to display error details (only on error page) -->
    <%-- Uncomment this in an error page
    if (exception != null) {
        out.println("<p><strong>Error Occurred: </strong>" + exception.getMessage() + "</p>");
    } --%>

</body>
</html>
