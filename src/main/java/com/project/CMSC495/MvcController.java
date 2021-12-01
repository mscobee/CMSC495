/* Name: Mohammed Shaikh, Michael Scobee, Eddy Owings, Anthony Pede
 * CMSC 495
 * Capstone project
 * 
 * This java file is the controller, and defines what the elements on the UI
 * do behind the scenes. All of the buttons and dropdown lists are defined from here.
 * Actions with buttons like submit or cancel are defined in this class.
 * 
 */

package com.project.CMSC495;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MvcController {
	
	@Autowired
	UserService userService;
	ChannelService channelService;
	
	@GetMapping("/index") 
	public String index() {
		System.out.println("Going about..."); 
		return "redirect:/"; 
	}

	@GetMapping("/about") 
	public String about() {
		System.out.println("Going about..."); 
		return "about"; 
	}

	@GetMapping("/contact") 
	public String contact() {
		System.out.println("Going contact..."); 
		return "contact"; 
	}
	
	@GetMapping("/userguide") 
	public String userguide() {
		System.out.println("Going contact..."); 
		return "userguide"; 
	}

	@GetMapping("/")
	public String showForm(Model model) {
		User user = new User();
		List<String> providerList = Arrays.asList("FiOS", "Cox", "Comcast");
		List<String> channelsList = Arrays.asList("The Most FiOS TV", "More FiOS TV", "Your FiOS TV",
				"FiOS TV TestDrive", "Contour TV Starter", "Contour TV Preferred", "Contour TV Preferred Plus", 
				"Contour TV Ultimate", "STANDARD+", "SELECT+", "SIGNATURE+", "SUPER+");
		model.addAttribute("user", user);
		model.addAttribute("channelsList", channelsList);
		model.addAttribute("providerList", providerList);

		return "index";
	}
	
	@PostMapping("/submit")
	public String submitForm(@ModelAttribute("user") User user) {
		userService.addUser(user);
		System.out.println(user);
		return "success";
	}
	
	
	@PostMapping("/results")
	public String continueForm(Model model) {
		List<User> everyone  = userService.getAllUsers();
		//List<Channels> all  = channelService.getAllChannels();
		System.out.println("USERS: " + everyone);
		//System.out.println(all);
		model.addAttribute("everyone", everyone); 
		return "results";
	}

	@RequestMapping("/back")
	public String returnToForm(User user) {
		int userId = user.getId();
		System.out.println("Deleting user ID: " + userId);
		userService.deleteUser(userId);
		return "redirect:/";
	}
	
	
//All controllers below are to test database

	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("student_list");
		List<User> userList = userService.getAllUsers();
		model.addObject("userList", userList);
	
	return model;
	}
	 
	 
	@RequestMapping(value="/addUser/", method=RequestMethod.GET)
	public ModelAndView addUser() {
		ModelAndView model = new ModelAndView();
		User user = new User();
		model.addObject("userForm", user);
		model.setViewName("user_form");
	  
	return model;
	}
	 
	
	 @RequestMapping(value="/editUser/{id}", method=RequestMethod.GET)
	 public ModelAndView editUser(@PathVariable int id) {
		 ModelAndView model = new ModelAndView();
		 User user = userService.getUserById(id);
		 model.addObject("userForm", user);
		 model.setViewName("user_form");
	  
	return model;
	}
	 
	 
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public ModelAndView add(@ModelAttribute("userForm") User user) {
		 userService.addUser(user);
	return new ModelAndView("redirect:/user/list");
	}
	 
	@RequestMapping(value="/deleteUser/{id}", method=RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {		 
		userService.deleteUser(id);
	return new ModelAndView("redirect:/user/list");  
	}
	
}

