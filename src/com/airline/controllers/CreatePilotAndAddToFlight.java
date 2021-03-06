package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Pilot;
import com.airline.models.PilotRank;
import com.airline.service.PilotService;

@WebServlet("/CreatePilotToFlight.do")
public class CreatePilotAndAddToFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	PilotService ps;
    public CreatePilotAndAddToFlight() {    super();   }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//move parameters from here
		String fName = request.getParameter("first_name");
		String lName = request.getParameter("last_name");
		String rank = request.getParameter("pilot_rank");
		String flightId = request.getParameter("fid");
		Integer license = Integer.parseInt(request.getParameter("license"));
		// to below
		Pilot p = new Pilot();
		p.setFirstName(fName);
		p.setLastName(lName);
		p.setPilotLicense(license);
		p.setPilotRank(PilotRank.valueOf(rank));
		
		ps.addPilotToFlight(p, flightId);
		
		response.sendRedirect("Flights");
	}
}