package com.project.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"admin/account"})
public class AccountController { 
	
	@GetMapping({"", "index"})
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Account List");
		modelMap.addAttribute("page", "../account/index.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"add"})
	public String addAccount(ModelMap modelMap) {
		modelMap.addAttribute("title", "Add a Account");
		modelMap.addAttribute("page", "../account/add-account.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"edit"})
	public String editAccount(ModelMap modelMap) {
		modelMap.addAttribute("title", "Edit Account Information");
		modelMap.addAttribute("page", "../account/edit-account.jsp");
		return "admin/layout/admin_layout"; 
	}
	
}
