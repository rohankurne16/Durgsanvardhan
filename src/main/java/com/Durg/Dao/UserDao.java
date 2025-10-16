package com.Durg.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Durg.bin.User;

public class UserDao {

    public boolean insert(User u) throws ClassNotFoundException, SQLException {

        // JDBC Driver लोड करा
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Database URL, user, password
        String url = "jdbc:mysql://" + System.getenv("DB_HOST") + ":" + System.getenv("DB_PORT") + "/" + System.getenv("DB_NAME") + "?useSSL=false&serverTimezone=UTC";
        String dbUser = System.getenv("DB_USER");
        String dbPassword = System.getenv("DB_PASSWORD");

        // Connection तयार करा
        try (Connection con = DriverManager.getConnection(url, dbUser, dbPassword)) {

            // PreparedStatement तयार करा
            String sql = "INSERT INTO user(name,address,number,age,email) VALUES (?,?,?,?,?)";
            try (PreparedStatement ps = con.prepareStatement(sql)) {

                // Set values
                ps.setString(1, u.getName());
                ps.setString(2, u.getAddress());
                ps.setString(3, u.getNumber());
                ps.setInt(4, u.getAge());
                ps.setString(5, u.getEmail());

                // Execute
                int rs = ps.executeUpdate();
                return rs > 0;
            }
        }
    }
}
