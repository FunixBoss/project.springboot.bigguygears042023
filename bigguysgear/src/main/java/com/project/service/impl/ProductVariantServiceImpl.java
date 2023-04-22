package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.ProductVariant;
import com.project.repositories.ProductVariantRepository;
import com.project.service.ProductVariantService;

@Service
public class ProductVariantServiceImpl implements ProductVariantService{

	@Autowired
	private ProductVariantRepository productVariantRepository;
	
	@Override
	public List<ProductVariant> findAll() {
		return productVariantRepository.findAll();
	}

	@Override
	public ProductVariant findById(Integer id) {
		return productVariantRepository.findById(id).get();
	}

	@Override
	public ProductVariant save(ProductVariant ProductVariant) {
		return productVariantRepository.save(ProductVariant);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			productVariantRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return productVariantRepository.count();
	}
	
	
}
