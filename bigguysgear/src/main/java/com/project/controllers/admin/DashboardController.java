package com.project.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.repositories.AccountRepository;
import com.project.repositories.RoleRepository;

@Controller
@RequestMapping({"admin"})
public class DashboardController { 
	
	@Autowired
	public RoleRepository roleRepository;
	
	@GetMapping({""})
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("page", "../dashboard/index.jsp");
		return "admin/layout/admin_layout";
	}
	
}
