package com.Durg.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Durg.Dao.EventDao;
import com.Durg.bin.Event;

@WebServlet("/events")
public class EventController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EventDao eventDao = new EventDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Event> eventList = null;
		try {
			eventList = eventDao.getAllEvents();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        request.setAttribute("eventList", eventList);
        request.getRequestDispatcher("events.jsp").forward(request, response);
    }
}
