package com.niit.cakenation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String getHome(){
		return "home";
	}
	@RequestMapping("/about")
	public String getAbout(){
		return "about";
	}
	@RequestMapping("/contact")
	public String getContact(){
		return "contact";
	}
	@RequestMapping("/login")
	public String getLogin(){
		return "login";
	}
	@RequestMapping("/home")
	public String getHomeee(){
		return "home";
	}
	

}
