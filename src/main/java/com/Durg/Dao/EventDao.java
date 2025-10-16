package com.Durg.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.Durg.bin.Event;

public class EventDao {

    // Render environment variables वापरून DB connection
    private String jdbcURL = "jdbc:mysql://" + System.getenv("DB_HOST") + ":" + System.getenv("DB_PORT") + "/" + System.getenv("DB_NAME") + "?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = System.getenv("DB_USER");
    private String jdbcPassword = System.getenv("DB_PASSWORD");

    private static final String SELECT_ALL_EVENTS = "SELECT * FROM events ORDER BY event_date ASC";

    protected Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // JDBC driver load
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
