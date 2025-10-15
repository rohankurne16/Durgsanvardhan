package com.Durg.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Durg.Dao.UserDao;
import com.Durg.bin.User;

@WebServlet("/Usercontroller")
public class Usercontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Usercontroller() {
        super();
    }

    // GET request handle
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // Marathi input support

        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String number = request.getParameter("phone");
        String email = request.getParameter("email");

        int age = 0;
        String ageStr = request.getParameter("age");

        try {
            if (ageStr != null && !ageStr.isEmpty()) {
                age = Integer.parseInt(ageStr);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
            return;
        }

        // Create User object
        User u = new User();
        u.setName(name);
        u.setAddress(address);
        u.setNumber(number);
        u.setAge(age);
        u.setEmail(email);

        // Insert into DB using UserDao
        UserDao ud = new UserDao();
        try {
            boolean inserted = ud.insert(u);
            if (inserted) {
                response.sendRedirect("success.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    // POST request delegates to GET
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
