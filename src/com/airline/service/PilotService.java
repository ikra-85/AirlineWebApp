package com.airline.service;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.airline.models.Flight;
import com.airline.models.Pilot;

@Stateless
@LocalBean
public class PilotService {

	@PersistenceContext(unitName="airline") // copy name from persistence.xml <persistence-unit>
    private EntityManager em;
	
    public PilotService() {    }
    
    //add Pilot to DB
    public void addPilot (Pilot p) {    	em.persist(p);		    }
  
    public void addPilotToFlight(Pilot p, String flightId) {

    	em.persist(p);
    TypedQuery<Flight> 	fQuery = em.createNamedQuery("Flight.findbyId", Flight.class); 	//	good
//  TypedQuery<Pilot> 	pQuery = em.createNamedQuery("Pilot.findId", Pilot.class);		//	bad
    
    fQuery.setParameter("id", Integer.parseInt(flightId));	// good
 // pQuery.setParameter("id", Integer.parseInt(pilotId));	// bad
    	
    Flight 	f = fQuery.getSingleResult();	// good
 // Pilot 	p = pQuery.getSingleResult();	// bad
    
    List<Pilot> pList = f.getPilots();
    pList.add(p);
    f.setPilots(pList);
    
    p.setFlightForPilot(f);
    }
}
