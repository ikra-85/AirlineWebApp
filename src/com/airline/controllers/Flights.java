package com.airline.controllers;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Flight;
import com.airline.service.FlightService;

@WebServlet("/Flights")
public class Flights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
    FlightService fs;
       
    public Flights() {       super();    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Flight> fList = (List<Flight>) fs.getFlights();
		request.setAttribute("flight_list", fList);
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/flights_list.jsp");
		view.forward(request, response);
//		PrintWriter out = response.getWriter();
	//	out.println("List of Flights: ");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
