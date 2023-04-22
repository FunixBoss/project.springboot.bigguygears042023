package com.project.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.repositories.AccountRepository;
import com.project.repositories.RoleRepository;
import com.project.service.CategoryService;

@Controller
@RequestMapping({"admin/product"})
public class ProductController { 
	
	@Autowired
	public CategoryService categoryService;
	
	@GetMapping({""})
	public String index(ModelMap modelMap) {
		modelMap.addAttribute("title", "Product");
		modelMap.addAttribute("page", "../product/product-list.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"product-grid"})
	public String indexGrid(ModelMap modelMap) {
		modelMap.addAttribute("title", "Product");
		modelMap.addAttribute("page", "../product/product-grid.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"add"})
	public String add(ModelMap modelMap) {
		modelMap.addAttribute("title", "Add a Product");
		modelMap.addAttribute("page", "../product/add-product.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"edit"})
	public String edit(ModelMap modelMap) {
		modelMap.addAttribute("title", "Edit a Product");
		modelMap.addAttribute("page", "../product/edit-product.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"brand"})
	public String brand(ModelMap modelMap) {
		modelMap.addAttribute("title", "Product Brand");
		modelMap.addAttribute("page", "../product/brand.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"category"})
	public String category(ModelMap modelMap) {
		modelMap.addAttribute("title", "Category");
		modelMap.addAttribute("page", "../product/category.jsp");
		return "admin/layout/admin_layout";
	}
	
	@GetMapping({"coupon"})
	public String coupon(ModelMap modelMap) {
		modelMap.addAttribute("title", "Product Coupon");
		modelMap.addAttribute("page", "../product/coupon.jsp");
		return "admin/layout/admin_layout";
	}
}
