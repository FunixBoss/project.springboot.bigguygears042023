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
@RequestMapping({"admin/order"})
public class OrderController { 
	
	@GetMapping({""}) 
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Order");
		modelMap.addAttribute("page", "../order/index.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"order-detail"})
	public String orderDetail(ModelMap modelMap) {
		modelMap.addAttribute("title", "Order Detail");
		modelMap.addAttribute("page", "../order/order-detail.jsp");
		return "admin/layout/admin_layout";
	}
}
