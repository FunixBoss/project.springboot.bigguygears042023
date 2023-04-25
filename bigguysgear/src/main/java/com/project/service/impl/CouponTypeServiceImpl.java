package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.CouponType;
import com.project.repositories.CouponTypeRepository;
import com.project.service.CouponTypeService;

@Service
public class CouponTypeServiceImpl implements CouponTypeService{

	@Autowired
	private CouponTypeRepository couponTypeRepository;
	
	@Override
	public List<CouponType> findAll() {
		return couponTypeRepository.findAll();
	}

	@Override
	public CouponType findById(Integer id) {
		return couponTypeRepository.findById(id).get();
	}

	@Override
	public CouponType save(CouponType CouponType) {
		return couponTypeRepository.save(CouponType);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			couponTypeRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return couponTypeRepository.count();
	}
	
	
}
