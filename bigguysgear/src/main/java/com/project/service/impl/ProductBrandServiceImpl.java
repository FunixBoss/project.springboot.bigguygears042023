package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.ProductBrand;
import com.project.repositories.ProductBrandRepository;
import com.project.service.ProductBrandService;

@Service
public class ProductBrandServiceImpl implements ProductBrandService{

	@Autowired
	private ProductBrandRepository productBrandRepository;
	
	@Override
	public List<ProductBrand> findAll() {
		return productBrandRepository.findAll();
	}

	@Override
	public ProductBrand findById(Integer id) {
		return productBrandRepository.findById(id).get();
	}

	@Override
	public ProductBrand save(ProductBrand ProductBrand) {
		return productBrandRepository.save(ProductBrand);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			productBrandRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return productBrandRepository.count();
	}
	
	
}
