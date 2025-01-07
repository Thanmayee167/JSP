<%-- 
    Document   : myHome.jsp
    Created on : 07-Jan-2025, 7:44:26 am
    Author     : saithanmayeebukkittu
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("username") == null)
                response.sendRedirect("login.jsp");
        %>

        <h1>Welcome, ${username}!</h1>
        <p>You have successfully logged in.</p>

        <form action="logout" method="post">
            <button type="submit">Logout</button>
        </form>
    </body>
</html>
