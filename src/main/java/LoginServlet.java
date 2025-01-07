
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author saithanmayeebukkittu
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hardcoded credentials (for demonstration)
        String validUsername = "admin";
        String validPassword = "password";
        
        if (username.equals(validUsername) && password.equals(validPassword)) {
            // Authentication successful, redirect to home page
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("username", username);
            response.sendRedirect("myHome.jsp");
        } else {
            // Authentication failed, redirect to error page
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
