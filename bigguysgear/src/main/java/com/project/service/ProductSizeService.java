package com.project.service;

import java.util.List;

import com.project.entities.ProductSize;
import com.project.entities.ProductSizeId;

public interface ProductSizeService {
	List<ProductSize> findAll();
	
	ProductSize findById(ProductSizeId id);
	
	ProductSize save(ProductSize product);
	
	Boolean delete(ProductSizeId id);
	
	Long count();
}
