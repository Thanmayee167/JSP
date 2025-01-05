<%-- 
    Document   : functionTags
    Created on : 06-Jan-2025, 12:22:33 am
    Author     : saithanmayeebukkittu
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSTL Function Tags Example</title>
</head>
<body>
    <h1>JSTL Function Tags Demonstration</h1>

    <h2>1. fn:length</h2>
    <c:set var="str" value="Hello, World!"/>
    <p>Length of the string "${str}": <c:out value="${fn:length(str)}"/></p>

    <h2>2. fn:toUpperCase and fn:toLowerCase</h2>
    <p>Uppercase: <c:out value="${fn:toUpperCase(str)}"/></p>
    <p>Lowercase: <c:out value="${fn:toLowerCase(str)}"/></p>

    <h2>3. fn:substring</h2>
    <p>Substring from index 7: <c:out value="${fn:substring(str, 7, fn:length(str))}"/></p>

    <h2>4. fn:trim</h2>
    <c:set var="trimStr" value="  Hello, World!  "/>
    <p>Original string: "${trimStr}"</p>
    <p>Trimmed string: "${fn:trim(trimStr)}"</p>

    <h2>5. fn:replace</h2>
    <p>Replace "Hello" with "Hi": <c:out value="${fn:replace(str, 'Hello', 'Hi')}"/></p>

    <h2>6. fn:split and fn:join</h2>
    <c:set var="words" value="${fn:split(str, ', ')}"/>
    <p>Split string into words: <c:out value="${words[0]}, ${words[1]}"/></p>
    <p>Join words with '-': <c:out value="${fn:join(words, '-')}"/></p>

    <h2>7. fn:contains</h2>
    <p>Does "${str}" contain "World"? <c:out value="${fn:contains(str, 'World')}"/></p>

    <h2>8. fn:startsWith and fn:endsWith</h2>
    <p>Does "${str}" start with "Hello"? <c:out value="${fn:startsWith(str, 'Hello')}"/></p>
    <p>Does "${str}" end with "World!"? <c:out value="${fn:endsWith(str, 'World!')}"/></p>

    <h2>9. fn:escapeXml</h2>
    <c:set var="xmlStr" value="<tag>Hello, World!</tag>"/>
    <p>Escaped XML string: <c:out value="${fn:escapeXml(xmlStr)}"/></p>
</body>
</html>