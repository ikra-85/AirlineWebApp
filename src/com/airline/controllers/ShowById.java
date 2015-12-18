package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.Flight;
import com.airline.models.Passenger;
import com.airline.service.FlightService;

@WebServlet("/ShowById.do")
public class ShowById extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    @PersistenceContext(unitName="airline") // copy name from persistence.xml <persistence-unit>
    private EntityManager em;
    
    @EJB
    FlightService fs;
    
    public ShowById() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String passengerId = request.getParameter("pid");
		if (passengerId == "" & passengerId == null) 
		{RequestDispatcher view = request.getRequestDispatcher("WEB-INF/jsp/ShowById.jsp");
		view.forward(request, response); 
		}
		String flightId = request.getParameter("fid");
		if (flightId == "") 
		{RequestDispatcher view = request.getRequestDispatcher("WEB-INF/jsp/ShowById.jsp");
		view.forward(request, response); 
		}
/*		String pilotLicense = request.getParameter("license");
		String airplaneId = request.getParameter("number");
*/
//Get a passenger by ID
    	CriteriaBuilder builder = em.getCriteriaBuilder();
    	CriteriaQuery<Passenger> cqPassenger = builder.createQuery(Passenger.class);
    	Root<Passenger> pRoot = cqPassenger.from(Passenger.class);
    	cqPassenger.select(pRoot).where(builder.equal(pRoot.get("id").as(Integer.class), Integer.parseInt(passengerId)));
    	TypedQuery<Passenger> pQuery = em.createQuery(cqPassenger);

    	Passenger p = pQuery.getSingleResult();
    	request.setAttribute("passenger", p);

//Get a flight by ID
        TypedQuery<Flight> 	flightQuery1 = em.createNamedQuery("Flight.findbyId", Flight.class);
        flightQuery1.setParameter("id", Integer.parseInt(flightId));
        Flight 	f = flightQuery1.getSingleResult();

 //       builder = em.getCriteriaBuilder();
 //   	CriteriaQuery<Flight> cqFlight = builder.createQuery(Flight.class);
    	
//    	Root<Flight> fRoot = cqFlight.from(Flight.class);
 //   	cqFlight.select(fRoot).where(builder.equal(fRoot.get("id").as(Integer.class), Integer.parseInt(flightId)));
    	
  //  	TypedQuery<Flight> fQuery = em.createQuery(cqFlight);
    //	Flight f = fQuery.getSingleResult();
    	request.setAttribute("flight", f);
    	
		
//Get a Pilot by ID
 /*
		TypedQuery<Pilot> 	pilotQuery = em.createNamedQuery("Pilot.findId", Pilot.class);
		pilotQuery.setParameter("id", Integer.parseInt(pilotLicense));
		Pilot 	pilot = pilotQuery.getSingleResult();
		request.setAttribute("pilot", pilot);
	   
*/
    	/*
//Get a Airplane by ID
		TypedQuery<Airplane> airplaneQuery = em.createNamedQuery("Airplane.findId", Airplane.class);
		airplaneQuery.setParameter("id", Integer.parseInt(airplaneId));
		Airplane 	airplane = airplaneQuery.getSingleResult();
		request.setAttribute("airplane", airplane);
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/jsp/ShowByIdResult.jsp");
		view.forward(request, response);
		 */
		
  		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/jsp/ShowByIdResult.jsp");
		view.forward(request, response); 
		
//		create service
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
