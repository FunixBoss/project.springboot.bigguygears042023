package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.ProductSize;
import com.project.repositories.ProductSizeRepository;
import com.project.service.ProductSizeService;

@Service
public class ProductSizeServiceImpl implements ProductSizeService{

	@Autowired
	private ProductSizeRepository productSizeRepository;
	
	@Override
	public List<ProductSize> findAll() {
		return productSizeRepository.findAll();
	}

	@Override
	public ProductSize findById(Integer id) {
		return productSizeRepository.findById(id).get();
	}

	@Override
	public ProductSize save(ProductSize ProductSize) {
		return productSizeRepository.save(ProductSize);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			productSizeRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return productSizeRepository.count();
	}
	
	
}
