package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.ProductImage;
import com.project.repositories.ProductImageRepository;
import com.project.service.ProductImageService;

@Service
public class ProductImageServiceImpl implements ProductImageService{

	@Autowired
	private ProductImageRepository productImageRepository;
	
	@Override
	public List<ProductImage> findAll() {
		return productImageRepository.findAll();
	}

	@Override
	public ProductImage findById(Integer id) {
		return productImageRepository.findById(id).get();
	}

	@Override
	public ProductImage save(ProductImage ProductImage) {
		return productImageRepository.save(ProductImage);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			productImageRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return productImageRepository.count();
	}
	
	
}
