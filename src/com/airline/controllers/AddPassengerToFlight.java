package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.service.FlightService;

@WebServlet("/AddPassengerToFlight.do")
public class AddPassengerToFlight extends HttpServlet {
	@EJB
	FlightService fs;
	
	private static final long serialVersionUID = 1L;
    public AddPassengerToFlight() {       super();    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fid = request.getParameter("fid");
		String pid = request.getParameter("pid");
	
		fs.addPassengreToFlight(pid, fid);
		response.sendRedirect("Flights");
	}
}
