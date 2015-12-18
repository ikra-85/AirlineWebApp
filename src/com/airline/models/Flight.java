package com.airline.models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@NamedQuery(name = "Flight.findbyId", query = "SELECT f FROM Flight f WHERE f.id = :id") //:id must be added 
@Entity
public class Flight implements Serializable {
	private static final long serialVersionUID = 1L;

	public Flight() {	super();	}
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Enumerated(EnumType.STRING)
	private FlightDestanations flightOrigin;
	
	@Enumerated(EnumType.STRING)
	private FlightDestanations flightDestination;
	
	private Integer price;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date flightTime;
	
	@OneToOne (cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
	@JoinColumn(name = "airplane_fk")
	private Airplane airplaneDetail;
	
	@OneToMany(mappedBy = "flightForPilot")
	private List<Pilot> pilots;
	
	@ManyToMany
	@JoinTable(name = "f_p_join", joinColumns = @JoinColumn(name = "flight_fk"), inverseJoinColumns = @JoinColumn(name = "passenger_fk"))//create table to join keys
	private List<Passenger> passengers;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public FlightDestanations getFlightOrigin() {
		return flightOrigin;
	}
	public void setFlightOrigin(FlightDestanations flightOrigin) {
		this.flightOrigin = flightOrigin;
	}
	public FlightDestanations getFlightDestination() {
		return flightDestination;
	}
	public void setFlightDestination(FlightDestanations flightDestination) {
		this.flightDestination = flightDestination;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Date getFlightTime() {
		return flightTime;
	}
	public void setFlightTime(Date flightTime) {
		this.flightTime = flightTime;
	}
	@Override
	public String toString() {
		return "Flight [id: " + id + ". Flight from: " + flightOrigin + ", to " + flightDestination
				+ ". Price: " + price + ". Flight Time: " + flightTime + "]";
	}
	
	public Airplane getAirplaneDetail() 					{	return airplaneDetail;	}
	public void setAirplaneDetail(Airplane airplaneDetail) 	{	this.airplaneDetail = airplaneDetail;	}
	
	public List<Pilot> getPilots() {
		return pilots;
	}
	public void setPilots(List<Pilot> pilots) {
		this.pilots = pilots;
	}
	public List<Passenger> getPassengers() {
		return passengers;
	}
	public void setPassengers(List<Passenger> passengers) {
		this.passengers = passengers;
	}	

}
