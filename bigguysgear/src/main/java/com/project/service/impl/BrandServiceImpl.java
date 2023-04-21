package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Brand;
import com.project.repositories.BrandRepository;
import com.project.service.BrandService;

@Service
public class BrandServiceImpl implements BrandService{

	@Autowired
	private BrandRepository brandRepository;
	
	@Override
	public List<Brand> findAll() {
		return brandRepository.findAll();
	}

	@Override
	public Brand findById(Integer id) {
		return brandRepository.findById(id).get();
	}

	@Override
	public Brand save(Brand Brand) {
		return brandRepository.save(Brand);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			brandRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return brandRepository.count();
	}
	
	
}
