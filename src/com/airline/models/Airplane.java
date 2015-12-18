package com.airline.models;

import java.io.Serializable;
import javax.persistence.*;

@NamedQuery(name = "Airplane.findbyId", query = "SELECT a FROM Airplane a WHERE a.id = :id") //:id must be added 
@Entity
public class Airplane implements Serializable {
	private static final long serialVersionUID = 1L;

	public Airplane() {		super();		}
   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	private String planeMake;
	private String modelName;
	private Integer seatingCapacity;
	@OneToOne(mappedBy = "airplaneDetail")
	private Flight flight;


	public Integer getId() 			{		return id;	}
	public void setId(Integer id) 	{		this.id = id;	}
	public String getPlaneMake() 	{		return planeMake;	}
	public void setPlaneMake(String planeMake) {		this.planeMake = planeMake;	}
	public String getModelName() 	{		return modelName;	}
	public void setModelName(String modelName) {	this.modelName = modelName;	}
	public Integer getSeatingCapacity() {		return seatingCapacity;	}
	public void setSeatingCapacity(Integer seatingCapacity) {	this.seatingCapacity = seatingCapacity;	}
	@Override
	public String toString() {
		return "Airplane [id: " + id + ". Plane: " + planeMake + ", model: " + modelName + ". "
				+ "Number od seats: " + seatingCapacity + "]";
	}
}