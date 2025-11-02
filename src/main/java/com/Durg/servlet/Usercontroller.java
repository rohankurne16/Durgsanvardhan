package com.Durg.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.Durg.Dao.UserDao;
import com.Durg.bin.User;

@WebServlet("/Usercontroller")
public class Usercontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Usercontroller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8"); 
        response.setContentType("text/html;charset=UTF-8");

        // 🔹 Marathi input parameters
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
       int age =  Integer.parseInt(request.getParameter("age")); 
        

        // 🔹 Create User object
        User u = new User();
        u.setName(name);
        u.setAddress(address);
        u.setNumber(phone);
        u.setAge(age);
        u.setEmail(email);

        // 🔹 Insert into database
        UserDao ud = new UserDao();
        boolean inserted = false;
        try {
            inserted = ud.insert(u);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp?msg=Database+Error");
            return;
        }

        if (inserted) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp?msg=Insert+Failed");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
