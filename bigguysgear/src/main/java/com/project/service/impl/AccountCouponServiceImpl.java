package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.AccountCoupon;
import com.project.models.AccountCouponId;
import com.project.repositories.AccountCouponRepository;
import com.project.service.AccountCouponService;

@Service
public class AccountCouponServiceImpl implements AccountCouponService{

	@Autowired
	private AccountCouponRepository accountCouponRepository;
	
	@Override
	public List<AccountCoupon> findAll() {
		return accountCouponRepository.findAll();
	}

	@Override
	public AccountCoupon findById(AccountCouponId id) {
		return accountCouponRepository.findById(id).get();
	}

	@Override
	public AccountCoupon save(AccountCoupon accountCoupon) {
		return accountCouponRepository.save(accountCoupon);
	}

	@Override
	public Boolean delete(AccountCouponId id) {
		try {
			accountCouponRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return accountCouponRepository.count();
	}
	
	
}
