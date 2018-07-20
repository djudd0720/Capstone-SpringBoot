package com.claim.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.claim.entity.Events;
import com.claim.service.EventsService;
import com.twilio.Twilio; 
import com.twilio.rest.api.v2010.account.Message; 
import com.twilio.rest.api.v2010.account.MessageCreator; 
import com.twilio.type.PhoneNumber;

@Controller
public class EventsController {
	
	private final static String ACCOUNT_SID = "AC535f9f70e6503709912a1f3dd76fa564"; 
    private final static String AUTH_TOKEN = "744f3fda6a5eb3537b6d5447e5da31fc"; 
	
	@Autowired
	private EventsService eventsService;
	
	 
	@RequestMapping(value="/success", method=RequestMethod.POST)
	public String textmessage() {
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		
		Message message = Message
	            .creator(new PhoneNumber("+18047287222"), // to
	                    new PhoneNumber("+18044038409"), // from
	                    "Thank you for signing up. We look forward to seeing you.")
	            .create();
        
       /* MessageCreator messageCreator = Message.creator( 
            "AC535f9f70e6503709912a1f3dd76fa564", 
            new PhoneNumber("+18047287222") 
        ); */
    
         
        /*Message message = messageCreator.create();*/ 
        System.out.println(message.getSid()); 
        return "success";
    } 


	
	
	@RequestMapping(value="/allEvents", method=RequestMethod.GET)
	 public String allEvents(HttpSession session)
	 {
		 //Returns the login page and passes a blank user object to it.
		 //the form is then filled out by the user and then sent back here to the controller
		 //'user' is the model passed to 'login' view (the MODELattribute)
		 List<Events> events = eventsService.getAllEvents();
		 session.setAttribute("events", events);
		 
		 System.out.println(events.size()+"test: "+ events.get(0).getNameOfEvent());
		 return "allEvents";
		 
	 }
	 
	 @RequestMapping(value="/allEvents", method=RequestMethod.POST)
	 public String allEvents(@ModelAttribute("events") Events events)
	 {
		 System.out.println("location search received: "+events);
		 
		 
		 return "success";
	 }
	 

}
