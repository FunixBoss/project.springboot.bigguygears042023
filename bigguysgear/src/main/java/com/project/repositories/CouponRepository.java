package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.Coupon;
import com.project.models.Role;

public interface CouponRepository extends JpaRepository<Coupon, Integer> {
	
}
