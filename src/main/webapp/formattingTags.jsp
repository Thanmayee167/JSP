<%-- 
    Document   : formattingTags
    Created on : 05-Jan-2025, 11:30:12 pm
    Author     : saithanmayeebukkittu
--%>

<%-- 
    Document   : formattingTags
    Created on : 05-Jan-2025, 11:30:12 pm
    Author     : saithanmayeebukkittu
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- Added core tag library -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.TimeZone" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL Formatting Tags Example</title>
    </head>
    <body>
        <h1>JSTL Formatting Tags Demonstration</h1>

        <h2>1. Number Formatting Using fmt:formatNumber</h2>
        <p>Original Number: 12345.6789</p>
        <p>Formatted as Currency: <fmt:formatNumber value="12345.6789" type="currency" /></p>
        <p>Formatted as Percentage: <fmt:formatNumber value="0.85" type="percent" /></p>
        <p>Formatted with Integer Only: <fmt:formatNumber value="12345.6789" type="number" maxFractionDigits="0" /></p>

        <h2>2. Date Formatting Using fmt:formatDate</h2>
        <%
            Date now = new Date();
            pageContext.setAttribute("now", now);
        %>
        <p>Current Date and Time: <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>Original Date: <fmt:formatDate value="${currentDate}" type="both" /></p>
        <p>Formatted as Date Only: <fmt:formatDate value="${currentDate}" type="date" /></p>
        <p>Formatted as Time Only: <fmt:formatDate value="${currentDate}" type="time" /></p>
        <p>Custom Format (yyyy-MM-dd): <fmt:formatDate value="${currentDate}" pattern="yyyy-MM-dd" /></p>

        <h2>3. Internationalization Using fmt:message</h2>
        <fmt:setLocale value="en_US" />
        <fmt:bundle basename="messages">
            <p>Message in English: <fmt:message key="welcome.message" /></p>
        </fmt:bundle>

        <h2>4. Parsing Numbers Using fmt:parseNumber</h2>
        <c:set var="parsedNumber" value="${'12,345.67'}" />
        <fmt:parseNumber var="numberValue" value="${parsedNumber}" />
        <p>Parsed Number: ${numberValue}</p>

        <h2>5. Parsing Dates Using fmt:parseDate</h2>
        <c:set var="dateString" value="2025-01-05" />
        <fmt:parseDate var="parsedDate" value="${dateString}" pattern="yyyy-MM-dd" />
        <p>Original String: ${dateString}</p>
        <p>Parsed Date: <fmt:formatDate value="${parsedDate}" type="date" /></p>

        <h2>6. Setting Locale Using fmt:setLocale</h2>
        <fmt:setLocale value="fr_FR" />
        <fmt:bundle basename="messages"> <!-- Enclose fmt:message within fmt:bundle -->
            <p>Current Locale Message: <fmt:message key="locale.message" /></p> <!-- Right Usage Inside fmt:bundle -->
        </fmt:bundle>

        <h2>7. Formatting Dates Using Time Zone</h2>
        <%
            TimeZone pstTimeZone = TimeZone.getTimeZone("PST");
            pageContext.setAttribute("pstTimeZone", pstTimeZone);
        %>

        <p>Formatted Date with PST Time Zone: <fmt:formatDate value="${currentDate}" type="both" timeZone="${pstTimeZone}" /></p>

    </body>
</html>