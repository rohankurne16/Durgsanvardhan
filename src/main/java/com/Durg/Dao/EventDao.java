package com.Durg.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.Durg.bin.Event;

public class EventDao {

    private String jdbcURL = "jdbc:mysql://localhost:3306/durgdb"; // तुमच्या DB name बदल
    private String jdbcUsername = "root"; // DB user
    private String jdbcPassword = "password"; // DB password

    private static final String SELECT_ALL_EVENTS = "SELECT * FROM events ORDER BY event_date ASC";

    protected Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<Event> getAllEvents() {
        List<Event> events = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(SELECT_ALL_EVENTS)) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Event ev = new Event();
                ev.setId(rs.getInt("id"));
                ev.setTitle(rs.getString("title"));
                ev.setDescription(rs.getString("description"));
                ev.setEventDate(rs.getDate("event_date"));
                ev.setLocation(rs.getString("location"));
                events.add(ev);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return events;
    }
}
