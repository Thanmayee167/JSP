<%-- 
    Document   : sqlTags
    Created on : 06-Jan-2025, 12:11:00 am
    Author     : saithanmayeebukkittu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Students List</title>
</head>
<body>
    <h1>List of Students</h1>

    <%-- Step 1: Configure the database connection using <sql:setDataSource> --%>
    <sql:setDataSource var="dataSource"
                       driver="org.postgresql.Driver"
                       url="jdbc:postgresql://localhost:5432/myDatabase"
                       user="postgres"
                       password="password"/>
    
    <%-- Step 2: Execute SQL query using <sql:query> --%>
    <sql:query var="result" dataSource="${dataSource}">
        SELECT id, name, age FROM student;
    </sql:query>

    <%-- Step 3: Display data using JSTL core tags --%>
    <ul>
        <c:forEach var="student" items="${result.rows}">
            <li>ID: ${student.id}, Name: ${student.name}, Age: ${student.age}</li>
        </c:forEach>
    </ul>

</body>
</html>
