package com.project.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.repositories.AccountRepository;
import com.project.repositories.RoleRepository;
import com.project.service.CategoryService;
import com.project.service.ProductService;

@Controller
@RequestMapping({"admin"})
public class AdminController { 
	
	@GetMapping({"", "dashboard"})
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Dashboard");
		modelMap.addAttribute("page", "../admin/dashboard.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"login"})
	public String login(ModelMap modelMap) {
		modelMap.addAttribute("title", "Admin Login");
		return "admin/account/login";
	}
	
	@GetMapping({"profile-setting"})
	public String profileSetting(ModelMap modelMap) {
		modelMap.addAttribute("title", "Profile Setting");
		modelMap.addAttribute("page", "../admin/profile-setting.jsp");
		return "admin/layout/admin_layout";
	}
}
