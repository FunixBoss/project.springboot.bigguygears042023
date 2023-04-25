package com.project.service;

import java.util.List;

import com.project.models.Coupon;

public interface CouponService {
	List<Coupon> findAll();
	
	Coupon findById(Integer id);
	
	Coupon save(Coupon coupon);
	
	Boolean delete(Integer id);
	
	Long count();
}
