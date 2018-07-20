package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Events;

import com.claim.repository.EventsRepository;

@Service
public class EventsService {
	@Autowired
	EventsRepository eventsRepository;
	
	public List<Events> getAllEvents()
	{
		return eventsRepository.findAll();
	}

	public void saveEvent(Events event) {
		eventsRepository.save(event);
		
	}
	
	
}



