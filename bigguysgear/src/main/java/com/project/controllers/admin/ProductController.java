package com.project.controllers.admin;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.models.Category;
import com.project.models.Product;
import com.project.models.ProductSize;
import com.project.models.ProductVariant;
import com.project.service.CartService;
import com.project.service.CategoryService;
import com.project.service.ProductBrandService;
import com.project.service.ProductService;
import com.project.service.ProductSizeService;
import com.project.service.RoleService;
import com.project.service.impl.CategoryServiceImpl;
import com.project.util.SortType;

@Controller
@RequestMapping({"admin/product"})
public class ProductController { 
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductBrandService productBrandService;
	
	@Autowired
	private ProductSizeService productSizeService;
	
	@GetMapping({""}) // product list 
	public String index(ModelMap modelMap, @RequestParam(name = "page") Integer page, 
			@RequestParam(name="categoryId", required =  false) Integer categoryId,
			@RequestParam(name = "status", required = false) String status,
			@RequestParam(name = "publishDateBefore", required = false) String publishDateBefore) {
		List<Product> products = productService.findByPages(page - 1, 10, "createdAt", SortType.ASCENDING, categoryId, status, publishDateBefore).toList();
		Integer pageMax = productService.countForPages(categoryId, status, publishDateBefore);
		modelMap.addAttribute("products", products);
		modelMap.addAttribute("categories", categoryService.findAll());
		modelMap.addAttribute("pageMax", pageMax);
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
		Product product = new Product();
		product.getProductVariants().add(new ProductVariant());
		modelMap.addAttribute("product", product);
		modelMap.addAttribute("sizes", productSizeService.findAll());
		modelMap.addAttribute("brands", productBrandService.findAll());
		modelMap.addAttribute("categories", categoryService.findAll());
		modelMap.addAttribute("title", "Add a Product");
		modelMap.addAttribute("page", "../product/add-product.jsp");
		return "admin/layout/admin_layout";
	}
	
	@PostMapping({"add"})
	public String add(@ModelAttribute("product") Product product, ModelMap modelMap) {
		
		modelMap.addAttribute("page", "../product/product-list.jsp");
		return "redirect:/admin/layout/admin_layout";
	}
	
	@GetMapping({"edit/{id}"})
	public String edit(@PathVariable("id") Integer productId,ModelMap modelMap) {
		Product product = productService.findById(productId);
		
		
		modelMap.addAttribute("product", product);
		modelMap.addAttribute("categories", categoryService.findAll());
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
