package com.project.service;

import java.util.List;

import com.project.entities.ProductImage;

public interface ProductImageService {
	List<ProductImage> findAll();
	
	ProductImage findById(Integer id);
	
	ProductImage save(ProductImage ProductImage);
	
	Boolean delete(Integer id);
	
	Long count();
}
