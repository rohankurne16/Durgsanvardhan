package com.Durg.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RejectServlet
 */
@WebServlet("/RejectServlet")
public class RejectServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<h3>❌ नोंदणी नाकारली गेली: " + email + "</h3>");
    }
}
