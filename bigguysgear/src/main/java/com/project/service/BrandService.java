package com.project.service;

import java.util.List;

import com.project.entities.Brand;

public interface BrandService {
	List<Brand> findAll();
	
	Brand findById(Integer id);
	
	Brand save(Brand brand);
	
	Boolean delete(Integer id);
	
	Long count();
}
