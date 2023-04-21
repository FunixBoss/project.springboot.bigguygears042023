package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Category;
import com.project.repositories.CategoryRepository;
import com.project.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryRepository categoryRepository;
	
	@Override
	public List<Category> findAll() {
		return categoryRepository.findAll();
	}

	@Override
	public Category findById(Integer id) {
		return categoryRepository.findById(id).get();
	}

	@Override
	public Category save(Category Category) {
		return categoryRepository.save(Category);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			categoryRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return categoryRepository.count();
	}
	
	
}
