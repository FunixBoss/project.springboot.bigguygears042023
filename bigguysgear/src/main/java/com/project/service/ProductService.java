package com.project.service;

import java.util.List;

import com.project.entities.Product;

public interface ProductService {
	List<Product> findAll();
	
	Product findById(Integer id);
	
	Product save(Product product);
	
	Boolean delete(Integer id);
	
	Long count();
}
