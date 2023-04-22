package com.project.service;

import java.util.List;

import com.project.entities.ProductColor;

public interface ProductColorService {
	List<ProductColor> findAll();
	
	ProductColor findById(Integer id);
	
	ProductColor save(ProductColor ProductColor);
	
	Boolean delete(Integer id);
	
	Long count();
}
