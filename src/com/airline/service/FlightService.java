package com.airline.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import com.airline.models.Airplane;
import com.airline.models.Flight;
import com.airline.models.Passenger;
import com.airline.models.Pilot;

@Stateless
@LocalBean
public class FlightService {

    public FlightService() {    }
    @PersistenceContext(unitName = "airline")
    EntityManager em;
    
    //add Flight to DB
    public void addFlight(Flight f, Airplane a) {
    	em.persist(f);
    	//em.persist(a); -- propogated and cascaded from flight and saved uutomatically
    }
    public void addPilotToFlight(String pilotId, String flightId) {

    TypedQuery<Flight> 	fQuery = em.createNamedQuery("Flight.findbyId", Flight.class);
    TypedQuery<Pilot> 	pQuery = em.createNamedQuery("Pilot.findId", Pilot.class);
    
    fQuery.setParameter("id", Integer.parseInt(flightId));
    pQuery.setParameter("id", Integer.parseInt(pilotId));
    	
    Flight 	f = fQuery.getSingleResult();
    Pilot 	p = pQuery.getSingleResult();
    
    List<Pilot> pList = f.getPilots();
    pList.add(p);
    f.setPilots(pList);
    
    p.setFlightForPilot(f);
    }
    
    public List<Flight> getFlights () {
		TypedQuery<Flight> query = em.createQuery("SELECT f FROM Flight f", Flight.class);
    	List<Flight> results = query.getResultList();
    	return results;
    }
    
    public void addPassengreToFlight(String passengerId, String flightId){
    	//Get a passenger by ID
    	CriteriaBuilder builder = em.getCriteriaBuilder();
    	CriteriaQuery<Passenger> cqPassenger = builder.createQuery(Passenger.class);

    	Root<Passenger> pRoot = cqPassenger.from(Passenger.class);
    	cqPassenger.select(pRoot).where(builder.equal(pRoot.get("id").as(Integer.class), passengerId));
    	
    	TypedQuery<Passenger> pQuery = em.createQuery(cqPassenger);
    	Passenger p = pQuery.getSingleResult();

    	//Get a flight by ID
    	builder = em.getCriteriaBuilder();
    	CriteriaQuery<Flight> cqFlight = builder.createQuery(Flight.class);
    	
    	Root<Flight> fRoot = cqFlight.from(Flight.class);
    	cqFlight.select(fRoot).where(builder.equal(fRoot.get("id").as(Integer.class), flightId));
    	
    	TypedQuery<Flight> fQuery = em.createQuery(cqFlight);
    	Flight f = fQuery.getSingleResult();
    	
    	//Associate the passenger with the flight
    	List<Passenger> pList = f.getPassengers();
    	pList.add(p);
    	f.setPassengers(pList);
    	p.getFlights().add(f);
    }
}