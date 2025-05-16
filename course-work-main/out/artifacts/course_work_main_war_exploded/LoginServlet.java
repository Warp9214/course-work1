package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private static final String PASSWORD = "7171";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String password = request.getParameter("password");

        if (PASSWORD.equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("authenticated", true);
            response.sendRedirect("admin");
        } else {
            request.setAttribute("errorMessage", "Пароль введено неправильно.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
