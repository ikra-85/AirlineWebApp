package com.airline.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
@NamedQuery(name = "Pilot.findId", query = "SELECT p FROM Pilot p WHERE p.id = :id") //:id must be added 
//@NamedQuery(name = "Pilot.findLicense", query = "SELECT t FROM Pilot t WHERE t.pilotLicense = :pilotLicense") //:id must be added 
@Entity
public class Pilot implements Serializable {
	private static final long serialVersionUID = 1L;

	public Pilot() {		super();	}
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String firstName;
	private String lastName;
	private Integer pilotLicense;
	@Enumerated(EnumType.STRING)
	private PilotRank pilotRank;
	@ManyToOne
	@JoinColumn(name = "flight_fk")
	private Flight flightForPilot;

	public Integer getId() {		return id;}
	public void setId(Integer id) {		this.id = id;}
	public String getFirstName() {		return firstName;}
	public void setFirstName(String firstName) {		this.firstName = firstName;}
	public String getLastName() 				{		return lastName;	}
	public void setLastName(String lastName) {		this.lastName = lastName;}
	public Integer getPilotLicense() {		return pilotLicense;}
	public void setPilotLicense(Integer pilotLicense) {		this.pilotLicense = pilotLicense;	}
	public PilotRank getPilotRank() {		return pilotRank;	}
	public void setPilotRank(PilotRank pilotRank) {		this.pilotRank = pilotRank;}
	public Flight getFlightForPilot() {		return flightForPilot;}
	public void setFlightForPilot(Flight flightForPilot) {		this.flightForPilot = flightForPilot;	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Pilot [id:");
		builder.append(id);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", lastName=");
		builder.append(lastName);
		builder.append(", pilotLicense=");
		builder.append(pilotLicense);
		builder.append(", pilotRank=");
		builder.append(pilotRank);
		builder.append(", flightForPilot=");
		builder.append(flightForPilot);
		builder.append("]");
		return builder.toString();
	}
}