package com.project.CMSC495;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MvcController {

	@Autowired
	UserService userService;

	@GetMapping("/index")
	public String index() {
		System.out.println("Going index...");
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
		System.out.println("Going userguide...");
		return "userguide";
	}

	@GetMapping("/")
	public String showForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "index";
	}

	@PostMapping("/submit")
	public String submitForm(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
		System.out.println(user);
		if (bindingResult.hasErrors()) {
			return "index";
		} else {
			userService.addUser(user);
			return "success";
		}
	}

	@Autowired ChannelRepository channelRepo;
	@Autowired CostRepository costRepo;

	@PostMapping("/results") 
	public String continueForm(Model model) {
		List<User> user  = userService.getAllUsers();
		User userNum = user.get(user.size()-1);
		System.out.println(userNum);
		model.addAttribute("userNum", userNum);
		List<Channels> all = new ArrayList<>();
		channelRepo.findAll().forEach(all::add); 
		model.addAttribute("all", all);
		List<Cost> cost = new ArrayList<>();
		costRepo.findAll().forEach(cost::add);
		model.addAttribute("cost", cost);
		return "results"; 
	}

	@RequestMapping("/back")
	public String returnToForm(User user) {
		int userId = user.getId();
		System.out.println("Deleting user ID: " + userId);
		userService.deleteUser(userId);
		return "redirect:/";
	}
	

    @Autowired
    private JavaMailSender mailSender;
    
    @RequestMapping("/sendmail") 
    public String sendmail(@RequestParam("fname")String fname, @RequestParam("sender")String sender, @RequestParam("text")String text) {
    	// ADD MORE EMAILS BY INCREASING ARRAY.
    	String[] to = new String[3];
    	to[0] = "cordcutterproject@gmail.com";
    	to[1] = "eowings@student.umgc.edu";
    	to[2] = sender;
    	SimpleMailMessage message = new SimpleMailMessage();
    	message.setFrom(sender);
    	message.setTo(to);
    	message.setSubject("This is a message from " + fname + " sent from cordcutter.com");
    	message.setText(text + "\n\n\nUsers E-mail address: " + sender);
    	mailSender.send(message);
    	return "mailsent";
    }  

}
