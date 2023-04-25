package com.project.service;

import java.util.List;

import com.project.models.ProductSize;

public interface ProductSizeService {
	List<ProductSize> findAll();
	
	ProductSize findById(Integer id);
	
	ProductSize save(ProductSize product);
	
	Boolean delete(Integer id);
	
	Long count();
}
