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

//import com.airline.models.FlightClass;
import com.airline.models.Gender;
import com.airline.models.Passenger;
import com.airline.service.PassengerService;

@WebServlet("/AddPassenger.do")
public class AddPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	PassengerService ps;
	
    public AddPassenger() {        super();    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*Passenger p = new Passenger();
		p.setFirstName("Bob");
		p.setLastName("Kelso");
		p.setGender(Gender.Male);
	
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, 1999);
		cal.set(Calendar.MONTH, 5);
		cal.set(Calendar.DAY_OF_MONTH, 9);
		Date dob = cal.getTime();
		p.setDob(dob);
		
		p.setFlightClass(FlightClass.Business);
		
		System.out.println(p);
		ps.addPassenger(p);
	*/
		response.sendRedirect("Passengers");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String f = request.getParameter("first_name");
		String l = request.getParameter("last_name");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");

		String street = request.getParameter("street");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
//		FlightClass flightClass = (FlightClass) request.getParameter("class");
		
		Passenger p = new Passenger();
		
		p.setFirstName(f);
		p.setLastName(l);
		p.setGender(Gender.valueOf(gender));
		
		p.setStreet(street);
		p.setState(state);
		p.setCity(city);
		p.setZip(zip);
//		p.setFlightClass(flightClass);
		
		String[] dobArr = dob.split("\\/");
	
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, Integer.parseInt(dobArr[2]));
		cal.set(Calendar.MONTH, Integer.parseInt(dobArr[0]) - 1);
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dobArr[1]));
		Date fdob = cal.getTime();
		p.setDob(fdob);
		
		ps.addPassenger(p); // insert in DB
		response.sendRedirect("Passengers");
	}
}