package com.project.service;

import java.util.List;

import com.project.entities.AccountCoupon;
import com.project.entities.AccountCouponId;

public interface AccountCouponService {
	List<AccountCoupon> findAll();
	
	AccountCoupon findById(AccountCouponId id);
	
	AccountCoupon save(AccountCoupon accountCoupon);
	
	Boolean delete(AccountCouponId id);
	
	Long count();
}
