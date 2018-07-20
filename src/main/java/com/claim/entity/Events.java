package com.claim.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table (name="events")

public class Events {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int eventId;
	@Column(name = "nameOfEvent")
	private String nameOfEvent;
	@Column(name = "eventDesc")
	private String eventDesc;
	@Column(name = "city")
	private String city;
	@Column(name = "state")
	private String state;
	@Column(name = "dateOfEvent")
	private String dateOfEvent;
	@Column(name = "stateOfEvent")
	private String stateOfEvent;  //opened or closed
	@Column(name = "volunteersNeeded")
	private int volunteersNeeded;
	@Column(name = "contact")
	private String contact;
	@Column(name = "contactEmail")
	private String contactEmail;
	
	
	//constructors
	public Events() {
	}
	
	
	
	public Events(int eventId, String nameOfEvent, String eventDesc, String city, String state, String dateOfEvent,
			String stateOfEvent, int volunteersNeeded, String contact, String contactEmail) {
		super();
		this.eventId = eventId;
		this.nameOfEvent = nameOfEvent;
		this.eventDesc = eventDesc;
		this.city = city;
		this.state = state;
		this.dateOfEvent = dateOfEvent;
		this.stateOfEvent = stateOfEvent;
		this.volunteersNeeded = volunteersNeeded;
		this.contact = contact;
		this.contactEmail = contactEmail;
	}









	//Getters and Setters
	
	public String getNameOfEvent() {
		return nameOfEvent;
	}
	
	
	
	public String getEventDesc() {
		return eventDesc;
	}



	public void setEventDesc(String eventDesc) {
		this.eventDesc = eventDesc;
	}



	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public void setNameOfEvent(String nameOfEvent) {
		this.nameOfEvent = nameOfEvent;
	}
	public String getDateOfEvent() {
		return dateOfEvent;
	}
	public void setDateOfEvent(String dateOfEvent) {
		this.dateOfEvent = dateOfEvent;
	}
	public String getStateOfEvent() {
		return stateOfEvent;
	}
	public void setStateOfEvent(String stateOfEvent) {
		this.stateOfEvent = stateOfEvent;
	}
	public int getVolunteersNeeded() {
		return volunteersNeeded;
	}
	public void setVolunteersNeeded(int volunteersNeeded) {
		this.volunteersNeeded = volunteersNeeded;
	}
	


	public int getEventId() {
		return eventId;
	}


	public void setEventId(int eventId) {
		this.eventId = eventId;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getContactEmail() {
		return contactEmail;
	}


	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}



	@Override
	public String toString() {
		return "Events [eventId=" + eventId + ", nameOfEvent=" + nameOfEvent + ", eventDesc=" + eventDesc + ", city="
				+ city + ", state=" + state + ", dateOfEvent=" + dateOfEvent + ", stateOfEvent=" + stateOfEvent
				+ ", volunteersNeeded=" + volunteersNeeded + ", contact=" + contact + ", contactEmail=" + contactEmail
				+ "]";
	}



	
	}
	
	
	
	
	

