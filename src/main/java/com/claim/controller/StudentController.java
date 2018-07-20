package com.claim.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Events;
import com.claim.entity.User;
import com.claim.repository.EventsRepository;
import com.claim.service.EventsService;

/*import com.claim.entity.Student;*/

/*import com.claim.repository.StudentRepository;*/
/*import com.claim.service.StudentService;*/
import com.claim.service.UserService;


@Controller
public class StudentController {
	 
	@Autowired
	private UserService userService;
	
	@Autowired
	private EventsService eventsService;
	

	 
	@RequestMapping("/")
	public String welcome(Model model) {
		model.addAttribute("message", "This is the welcome Page");
		return "index";
	}
	
 /*@RequestMapping(value="/submitStudentDetails", method= RequestMethod.POST)
 private String submitStudent(Model model, @ModelAttribute("student") Student student){
	this.studentService.addStudent(student);
	model.addAttribute("welcome", "Welcome Student");
	 return "home";
 }*/
 
/* @RequestMapping(value="/findStudentById", 
		 method= RequestMethod.GET
		 )*/
 @RequestMapping(value="/about", method = RequestMethod.GET)
 public String about()
 {
 return "about";
 }

 @RequestMapping(value="register", method =RequestMethod.GET)
 public ModelAndView register()
 {
	 //Returns the registration page and passes a blank user object to it.
	 //the form is then filled out by the user and then sent back here to the controller
	 //'user' is the model passed to 'registration' view (the MODELattribute)
	 return new ModelAndView("registration", "user", new User());
	 
 }
 
 
 
 @RequestMapping(value="/register", method=RequestMethod.POST)
 public ModelAndView registration(@ModelAttribute("user") User user)
 {
	  
	 System.out.println("Info received: "+user);
		userService.saveUser(user);
		return new ModelAndView("login", "user", new User());
	 
	 //success is a static page so you can just return (return type String) and the name of the jsp page in quotes - "success"
	 //if you are passing data, you need to use the @ModelAttribute from above
 }
 
 @RequestMapping(value="/login", method =RequestMethod.GET)
 public ModelAndView login()
 {
	 //Returns the login page and passes a blank user object to it.
	 //the form is then filled out by the user and then sent back here to the controller
	 //'user' is the model passed to 'login' view (the MODELattribute)
	 return new ModelAndView("login", "user", new User());
	 
 }
 
 @RequestMapping(value="/login", method=RequestMethod.POST)
 public ModelAndView login(@ModelAttribute("user") User user, HttpSession session)
 {
	 System.out.println("Info received: "+user);
	 session.setAttribute("user", user);
	
	 if (user.getEmail().equals("admin@test.com") && (user.getPassword().equals("password"))){
		 return new ModelAndView("Admin","myEvent", new Events());
	 }
	 else {
		 List<Events> events = eventsService.getAllEvents();
		 session.setAttribute("events", events);
		/* ("events");*/
		 return new ModelAndView ("allEvents");
		 
	 }
 }
 
 @RequestMapping(value="/donate", method = RequestMethod.GET)
 public String donate()
 {
 return "donate";
 }
 
 @RequestMapping(value="/opportunities", method =RequestMethod.GET)
 public ModelAndView opportunities()
 {
	 //Returns the login page and passes a blank user object to it.
	 //the form is then filled out by the user and then sent back here to the controller
	 //'user' is the model passed to 'login' view (the MODELattribute)
	 return new ModelAndView("opportunities", "user", new User());
	 
 }
 
 @RequestMapping(value="/opportunities", method=RequestMethod.POST)
 public void opportunities(@ModelAttribute("user") User user)
 {
	 System.out.println("location search received: "+user);
	 
	 
 }
 
 @RequestMapping(value="/admin", method = RequestMethod.GET)
 public ModelAndView admin()
 {
 return new ModelAndView("Admin","myEvent", new Events());
 }
 
 @RequestMapping(value="/admin", method=RequestMethod.POST)
 public ModelAndView admin(@ModelAttribute("myEvent") Events event)
 {
	 System.out.println("Info received: "+ event);
	 eventsService.saveEvent(event);
	 
	 return new ModelAndView("Admin","myEvent", new Events());
	 
 }
 
 @RequestMapping(value="/fancylogin", method = RequestMethod.GET)
 public String fancylogin()
 {
 return "fancylogin";
 }
 
 @RequestMapping(value="/eventMap", method = RequestMethod.GET)
 public String eventMap()
 {
 return "eventMap";
 }
 
 @RequestMapping(value="/radarMap", method = RequestMethod.GET)
 public String radarMap()
 {
 return "radarMap";
 }

 /*@ResponseBody
 private ResponseEntity<Student> findStudent( String email){
	Student student = this.studentService.findStudent(email);
	return new ResponseEntity<>(student,HttpStatus.OK);
 }*/
 

}