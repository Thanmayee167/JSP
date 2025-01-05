<%-- 
    Document   : getStudent
    Created on : 05-Jan-2025, 8:02:21 pm
    Author     : saithanmayeebukkittu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %> <!-- Import SQL package -->
<%@ page import="java.io.*" %> <!-- Import IO package for StringWriter -->

<!DOCTYPE html>
<html>
<head>
    <title>Fetch Student Data</title>
</head>
<body>
    <h1>Fetch Student Details</h1>

    <!-- Form to accept student ID -->
    <form method="post">
        <label for="studentId">Enter Student ID:</label>
        <input type="number" id="studentId" name="studentId" required>
        <button type="submit">Fetch Data</button>
    </form>

    <%
        // Check if a student ID is provided
        String studentIdParam = request.getParameter("studentId");
        if (studentIdParam != null) {
            int studentId = Integer.parseInt(studentIdParam); // Parse the student ID from the form

            // Database connection parameters
            String jdbcURL = "jdbc:postgresql://localhost:5432/myDatabase"; // Replace with your DB details
            String dbUser = "postgres"; // Replace with your DB username
            String dbPassword = "password"; // Replace with your DB password

            Connection connection = null;
            PreparedStatement statement = null;
            ResultSet resultSet = null;

            try {
                // Load PostgreSQL JDBC driver
                Class.forName("org.postgresql.Driver");

                // Establish the database connection
                connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                // SQL query to fetch data for the entered student ID
                String sql = "SELECT * FROM student WHERE id = ?";
                statement = connection.prepareStatement(sql);
                statement.setInt(1, studentId); // Set the value for the student ID

                // Execute the query
                resultSet = statement.executeQuery();

                // Display the results
                if (resultSet.next()) {
    %>
                    <h2>Student Details:</h2>
                    <p><strong>ID:</strong> <%= resultSet.getInt("id") %></p>
                    <p><strong>Name:</strong> <%= resultSet.getString("name") %></p>
                    <p><strong>Age:</strong> <%= resultSet.getInt("age") %></p>
    <%
                } else {
    %>
                    <p style="color:red;">No student found with ID = <%= studentId %>.</p>
    <%
                }
            } catch (Exception e) {
                // Write the exception stack trace to the JSP page
                StringWriter sw = new StringWriter();
                e.printStackTrace(new PrintWriter(sw));
    %>
                <p style="color:red;">Error:</p>
                <pre><%= sw.toString() %></pre>
    <%
            } finally {
                // Close resources
                try { if (resultSet != null) resultSet.close(); } catch (SQLException ex) { ex.printStackTrace(); }
                try { if (statement != null) statement.close(); } catch (SQLException ex) { ex.printStackTrace(); }
                try { if (connection != null) connection.close(); } catch (SQLException ex) { ex.printStackTrace(); }
            }
        }
    %>
</body>
</html>
