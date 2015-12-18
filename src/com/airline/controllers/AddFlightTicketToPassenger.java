package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.service.PassengerService;

@WebServlet("/AddFlightTicketToPassenger.do")
public class AddFlightTicketToPassenger extends HttpServlet {
	
	@EJB
	PassengerService ps;
	//FlightService fs;
	
	private static final long serialVersionUID = 1L;
    public AddFlightTicketToPassenger() {       super();    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fid = request.getParameter("fid");
		String pid = request.getParameter("pid");
	
//		fs.addPassengreToFlight(pid, fid);
		ps.addFlightTicketToPassenger(fid, pid);
		response.sendRedirect("Passengers");
	}
}
