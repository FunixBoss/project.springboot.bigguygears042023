package com.project.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"admin/login"})
public class LoginController { 
	 
	@GetMapping({"", "index"})
	public String login() {
		return "admin.login.index";
	}
	
	@PostMapping("process")
	public String process() {
		return "redirect:/admin/dashboard";
	}
	
}
