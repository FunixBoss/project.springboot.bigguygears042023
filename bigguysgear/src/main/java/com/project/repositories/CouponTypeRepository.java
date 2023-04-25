package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.CouponType;
import com.project.models.Role;

public interface CouponTypeRepository extends JpaRepository<CouponType, Integer> {
	
}
