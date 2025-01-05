<%-- 
    Document   : coreTagExample
    Created on : 05-Jan-2025, 11:15:06 pm
    Author     : saithanmayeebukkittu
--%>

<%-- 
    Document   : coreTagExample
    Created on : 05-Jan-2025, 11:15:06 pm
    Author     : saithanmayeebukkittu
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL Core Library -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL Core Tags Example</title>
    </head>
    <body>
        <h1>JSTL Core Tags Demonstration</h1>

        <!-- 1. c:set Example -->
        <h2>1. Setting Variables Using c:set</h2>
        <c:set var="message" value="Hello, welcome to JSTL Core Tags!" />
        <p>Message: ${message}</p>

        <!-- 2. c:choose, c:when, and c:otherwise Example -->
        <h2>2. Conditional Logic Using c:choose & c:when & c:otherwise</h2>
        <c:set var="number" value="5" />
        <p>Number: ${number}</p>
        <c:choose>
            <c:when test="${number > 10}">
                <p>The number is greater than 10.</p>
            </c:when>
            <c:when test="${number == 5}">
                <p>The number is equal to 5.</p>
            </c:when>
            <c:otherwise>
                <p>The number is less than 10 and not equal to 5.</p>
            </c:otherwise>
        </c:choose>

        <!-- 3. c:if Example -->
        <h2>3. Conditional Block Using c:if</h2>
        <c:if test="${number == 5}">
            <p>The number is exactly 5. (Checked using c:if)</p>
        </c:if>

        <!-- 4. c:forEach Example -->
        <h2>4. Looping Using c:forEach</h2>
        <c:set var="numbers" value="${'1,2,3,4,5'}" />
        <ul>
            <c:forEach var="num" items="${numbers}">
                <li>Number: ${num}</li>
            </c:forEach>
        </ul>

        <!-- 5. c:forTokens Example -->
        <h2>5. Tokenizing Using c:forTokens</h2>
        <c:set var="csv" value="apple,banana,orange,grape" />
        <p>Original String: ${csv}</p>
        <ul>
            <c:forTokens items="${csv}" delims="," var="fruit">
                <li>Fruit: ${fruit}</li>
            </c:forTokens>
        </ul>

        <!-- 6. c:out Example -->
        <h2>6. Output Escaping Using c:out</h2>
        <c:set var="htmlCode" value="<b>This is bold text</b>" />
        <p>Escaped: <c:out value="${htmlCode}" escapeXml="true" /></p>
        <p>Unescaped: ${htmlCode}</p>

        <!-- 7. c:remove Example -->
        <h2>7. Removing a Variable Using c:remove </h2>
        <c:set var="userAge" value="25" scope="session" />
        <p>User age (session scope) before removal: ${sessionScope.userAge}</p>
        <c:remove var="userAge" scope="session" />
        <p>User age (session scope) after removal: ${sessionScope.userAge}</p> <!-- This will display nothing because the variable is removed -->
    </body>
</html>
