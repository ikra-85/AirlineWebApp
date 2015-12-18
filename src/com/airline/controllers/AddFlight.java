package com.airline.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Airplane;
import com.airline.models.Flight;
import com.airline.models.FlightDestanations;
import com.airline.service.FlightService;

@WebServlet("/AddFlight.do")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	FlightService fs;
    public AddFlight() {    super();   }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Flight f = new Flight();
		f.setFlightOrigin(FlightDestanations.San_Francisco);
		f.setFlightDestination(FlightDestanations.London);
		f.setPrice(400);
		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.YEAR, 2014);
		cal.set(Calendar.MONTH, 10);
		cal.set(Calendar.DAY_OF_MONTH, 4);
		cal.set(Calendar.HOUR_OF_DAY, 14);
		cal.set(Calendar.MINUTE, 1);
		
		Date flightTime = cal.getTime();
		System.out.println(flightTime);
		f.setFlightTime(flightTime);
		System.out.println("Flight almost done");
		
		Airplane a = new Airplane();
		a.setModelName("787");
		a.setPlaneMake("Boeing");
		a.setSeatingCapacity(250);
		System.out.println("Plane is done");
		
		f.setAirplaneDetail(a);
		System.out.println("Plane is set to the flight");
		System.out.println(f);
		System.out.println(a);
		
		fs.addFlight(f, a);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Flight f = new Flight();

		String from_destination = request.getParameter("from_destination");
		f.setFlightOrigin(FlightDestanations.valueOf(from_destination));

		String to_destination = request.getParameter("to_destination");
		f.setFlightDestination(FlightDestanations.valueOf(to_destination));
		
		String price = request.getParameter("price");
		f.setPrice(Integer.parseInt(price));

		Integer year = Integer.parseInt(request.getParameter("year"));
		Integer month = Integer.parseInt(request.getParameter("month"));
		Integer day = Integer.parseInt(request.getParameter("day"));
		Integer hour = Integer.parseInt(request.getParameter("hour"));
		Integer minute = Integer.parseInt(request.getParameter("minute"));
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.YEAR, year);
		cal.set(Calendar.MONTH, month);
		cal.set(Calendar.DAY_OF_MONTH, day);
		cal.set(Calendar.HOUR_OF_DAY, hour);
		cal.set(Calendar.MINUTE, minute);
		
		Date flightTime = cal.getTime();
		f.setFlightTime(flightTime);
		
		Airplane a = new Airplane();
		
		String plane_make = request.getParameter("airplane_make");
		String plane_model = request.getParameter("airplane_model");
		Integer seating = Integer.parseInt(request.getParameter("airplane_seating"));

		a.setModelName(plane_model);
		a.setPlaneMake(plane_make);
		a.setSeatingCapacity(seating);
		
		f.setAirplaneDetail(a);
		
		fs.addFlight(f, a);
		response.sendRedirect("Flights");
	}
}