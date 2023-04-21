package com.project.controllers.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"", "home"})
public class HomeController {

	@GetMapping({"", "index"})
	public String index() {
		
		return "user/index";
	}
} 
