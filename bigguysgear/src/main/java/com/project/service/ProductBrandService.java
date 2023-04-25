package com.project.service;

import java.util.List;

import com.project.models.ProductBrand;

public interface ProductBrandService {
	List<ProductBrand> findAll();
	
	ProductBrand findById(Integer id);
	
	ProductBrand save(ProductBrand ProductBrand);
	
	Boolean delete(Integer id);
	
	Long count();
}
