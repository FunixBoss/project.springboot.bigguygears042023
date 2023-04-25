package com.project.service;

import java.util.List;

import com.project.models.ProductVariant;

public interface ProductVariantService {
	List<ProductVariant> findAll();
	
	ProductVariant findById(Integer id);
	
	ProductVariant save(ProductVariant product);
	
	Boolean delete(Integer id);
	
	Long count();
}
