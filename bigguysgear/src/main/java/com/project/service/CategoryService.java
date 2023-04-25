package com.project.service;

import java.util.List;

import com.project.models.Category;

public interface CategoryService {
	List<Category> findAll();
	
	Category findById(Integer id);
	
	Category save(Category category);
	
	Boolean delete(Integer id);
	
	Long count();
}
