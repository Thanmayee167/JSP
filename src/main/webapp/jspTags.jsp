<%-- 
    Document   : jspTags
    Created on : 05-Jan-2025, 1:19:38 pm
    Author     : saithanmayeebukkittu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Tags Example</title>
</head>
<body>
    <!-- Directive Tag -->
    <%@ page import="java.util.Date" %> 
    <!-- The directive tag is used to import a Java class. Here, we import `java.util.Date`. -->

    <h1>JSP Tags Example</h1>

    <!-- Declaration Tag -->
    <%!
        // Declaration: Variables or methods declared here are available for the entire JSP page.
        public String getGreeting() {
            return "Hello, welcome to the JSP example!";
        }
        int counter = 0; // Declared once and retains its value across page requests.
    %>

    <!-- Scriplet Tag -->
    <% 
        // Scriplet: Used to write Java code inside the JSP.
        counter++; 
        Date currentDate = new Date(); 
    %>

    <p><strong>Greeting Message:</strong> <%= getGreeting() %></p>
    <!-- Expression Tag -->
    <!-- Expression evaluates and outputs directly to the browser. -->
    <p><strong>Current Date and Time:</strong> <%= currentDate %></p>
    
    <p><strong>Page Visit Counter:</strong> <%= counter %></p>
    <!-- Expression Tag is used to print the counter value. -->

</body>
</html>
