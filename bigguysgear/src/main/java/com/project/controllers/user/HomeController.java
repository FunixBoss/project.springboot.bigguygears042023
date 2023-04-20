package com.project.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"", "home"})
public class HomeController { 
	
	@GetMapping({"", "index"})
	public String index() {
		return "user.index";
	}
	
	@GetMapping({"about"})
	public String about() {
		return "user.about";
	}
	
	@GetMapping({"contact"})
	public String contact() {
		return "user.contact";
	}
	
	@GetMapping({"shop"})
	public String shop() {
		return "user.shop";
	}
	
	@GetMapping({"product-details"})
	public String productDetails() {
		return "user.product_details";
	}
	
	@GetMapping({"profile"})
	public String profile() {
		return "user.profile";
	}
}
