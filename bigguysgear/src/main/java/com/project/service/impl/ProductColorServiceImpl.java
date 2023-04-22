package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.ProductColor;
import com.project.repositories.ProductColorRepository;
import com.project.service.ProductColorService;

@Service
public class ProductColorServiceImpl implements ProductColorService{

	@Autowired
	private ProductColorRepository productColorRepository;
	
	@Override
	public List<ProductColor> findAll() {
		return productColorRepository.findAll();
	}

	@Override
	public ProductColor findById(Integer id) {
		return productColorRepository.findById(id).get();
	}

	@Override
	public ProductColor save(ProductColor ProductColor) {
		return productColorRepository.save(ProductColor);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			productColorRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return productColorRepository.count();
	}
	
	
}
