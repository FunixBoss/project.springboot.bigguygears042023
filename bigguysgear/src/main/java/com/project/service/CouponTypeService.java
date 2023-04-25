package com.project.service;

import java.util.List;

import com.project.models.CouponType;

public interface CouponTypeService {
	List<CouponType> findAll();
	
	CouponType findById(Integer id);
	
	CouponType save(CouponType couponType);
	
	Boolean delete(Integer id);
	
	Long count();
}
