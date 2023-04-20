package com.project.services;

import com.project.entities.Category;

public interface CategoryService {
	Category findById(Integer id);
	Category save(Category category);
	Iterable<Category> findAll();
	long count();
	void deleteById(Integer id);
}
