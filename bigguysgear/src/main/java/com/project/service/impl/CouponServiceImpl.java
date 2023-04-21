package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Coupon;
import com.project.repositories.CouponRepository;
import com.project.service.CouponService;

@Service
public class CouponServiceImpl implements CouponService{

	@Autowired
	private CouponRepository couponRepository;
	
	@Override
	public List<Coupon> findAll() {
		return couponRepository.findAll();
	}

	@Override
	public Coupon findById(Integer id) {
		return couponRepository.findById(id).get();
	}

	@Override
	public Coupon save(Coupon Coupon) {
		return couponRepository.save(Coupon);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			couponRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return couponRepository.count();
	}
	
	
}
