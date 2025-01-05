<%-- 
    Document   : jspDirectiveTags
    Created on : 05-Jan-2025, 2:40:59 pm
    Author     : saithanmayeebukkittu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!-- Page Directive -->
<%-- The Page Directive defines various properties for the JSP page:
     - `language="java"`: Specifies that Java is the scripting language.
     - `contentType="text/html; charset=UTF-8"`: Sets the content type for the response, which is HTML with UTF-8 character encoding.
     - `pageEncoding="UTF-8"`: Specifies the encoding of the page.
--%>

<%@ page import="java.util.Date" %> <!-- Page Directive -->
<%-- The Page Directive here imports the `java.util.Date` class to use it in the JSP for getting the current date and time. --%>

<%@ include file="header.jsp" %> <!-- Include Directive -->
<%-- The Include Directive includes the contents of another JSP file (header.jsp) at this point in the page.
     This allows reusable content to be included in multiple pages. --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Taglib Directive -->
<%-- The Taglib Directive declares the usage of a custom tag library.
     - `prefix="c"`: Specifies the prefix for the tags from the JSTL core library.
     - `uri="http://java.sun.com/jsp/jstl/core"`: Defines the URI for the JSTL core library to identify it.
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Directive Example</title>
</head>
<body>
    <h1>JSP Directive Example</h1>

    <!-- Page Directive Example -->
    <p>Current Date and Time: <%= new Date() %></p>
    <%-- This is an example of a Scriptlet:
         - `<%= new Date() %>` outputs the current date and time in the HTML page.
         - Scriptlets can include Java code that gets executed on the server side.
    --%>

    <!-- Include Directive -->
    <p>The content from `header.jsp` has been included at the top of the page.</p>
    <%-- This content comes from the `header.jsp` file which has been included using the Include Directive. --%>

    <!-- Taglib Directive Example -->
    <c:choose>
        <c:when test="${2 > 1}">
            <p>Condition is true! (2 is greater than 1)</p>
        </c:when>
        <c:otherwise>
            <p>Condition is false!</p>
        </c:otherwise>
    </c:choose>
    <%-- The JSTL tags used here are part of the core library:
         - `<c:choose>`: Used to evaluate a set of conditions.
         - `<c:when>`: Defines a condition to be checked (in this case, 2 > 1).
         - `<c:otherwise>`: Defines an alternative action if none of the conditions match.
    --%>

</body>
</html>
