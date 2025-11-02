package com.Durg.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.Durg.bin.Event;

public class EventDao {

    // ✅ Insert new event
    public boolean insert(Event e) throws ClassNotFoundException, SQLException {

        // Load JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // ✅ Localhost connection
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/durg?useSSL=false&serverTimezone=UTC","root","root");
        PreparedStatement ps = con.prepareStatement("INSERT INTO events (title, description, event_date) VALUES (?, ?, ?)");

        ps.setString(1, e.getTitle());
        ps.setString(2, e.getDescription());
        ps.setDate(3, new java.sql.Date(e.getEventDate().getTime()));

        int rs = ps.executeUpdate();

        ps.close();
        con.close();

        if (rs > 0) {
            System.out.println("✅ Event inserted successfully!");
            return true;
        } else {
            System.out.println("⚠️ Failed to insert event!");
            return false;
        }
    }

    // ✅ Fetch all events
    public List<Event> getAllEvents() throws ClassNotFoundException, SQLException {

        List<Event> events = new ArrayList<>();

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/durg?useSSL=false&serverTimezone=UTC",
            "root",
            "root"
        );

        PreparedStatement ps = con.prepareStatement("SELECT * FROM events ORDER BY event_date ASC");
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            Event e = new Event();
            e.setId(rs.getInt("id"));
            e.setTitle(rs.getString("title"));
            e.setDescription(rs.getString("description"));
            e.setEventDate(rs.getDate("event_date"));
            events.add(e);
        }

        rs.close();
        ps.close();
        con.close();

        return events;
    }
}
