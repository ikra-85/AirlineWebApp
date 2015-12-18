package com.airline.models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
public class Passenger implements Serializable {
	@Transient
	private static final long serialVersionUID = 1L;
	public Passenger() {		super();	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
   
	private String firstName;
	private String lastName;

	private String street;
	private String state;
	private String city;
	private String zip;
	
	@Temporal(TemporalType.DATE)
	private Date dob;
	@Enumerated(EnumType.STRING)
	private Gender gender;
	@Enumerated(EnumType.STRING)
	private FlightClass flightClass;
	@ManyToMany(mappedBy = "passengers")
	private List<Flight> flights; //number of possible tickets of passengers

	public Integer getId() 			{		return id;		}
	public void setId(Integer id) 	{		this.id = id;	}
	public String getFirstName() 	{		return firstName;	}
	public void setFirstName(String firstName) {		this.firstName = firstName;	}
	public String getLastName() 	{		return lastName;	}
	public void setLastName(String lastName) {		this.lastName = lastName;}
	public Date getDob() 			{		return dob;	}
	public void setDob(Date dob) 	{		this.dob = dob;	}
	public Gender getGender() 		{		return gender;	}
	public void setGender(Gender gender) {	this.gender = gender;}
	public FlightClass getFlightClass() {		return flightClass;	}
	public void setFlightClass(FlightClass flightClass) {		this.flightClass = flightClass;}
	public String getStreet() 		{return street;}
	public void setStreet(String street) {this.street = street;}
	public String getState() 		{return state;}
	public void setState(String state) {this.state = state;}
	public String getCity() 		{return city;}
	public void setCity(String city) {this.city = city;	}
	public String getZip() {return zip;	}
	public void setZip(String zip) {this.zip = zip;}
	@Override
	public String toString() {
		return "Passenger [id: " + id + ". First and last name: " + firstName + " " + lastName + 
				". Date of birth: " + dob	+ ". Gender: " + gender + ". Flight Class: " + flightClass + "]";
	}
	public List<Flight> getFlights() {
		return flights;
	}
	public void setFlights(List<Flight> flights) {
		this.flights = flights;
	}
}