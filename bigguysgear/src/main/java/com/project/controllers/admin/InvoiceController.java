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
@RequestMapping({"admin/invoice"})
public class InvoiceController { 
	
	@GetMapping({""})
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Invoice");
		modelMap.addAttribute("page", "../invoice/index.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"invoice-detail"})
	public String invoiceDetail(ModelMap modelMap) {
		modelMap.addAttribute("title", "Invoice Detail");
		modelMap.addAttribute("page", "../invoice/invoice-detail.jsp");
		return "admin/layout/admin_layout";
	}
	
}
