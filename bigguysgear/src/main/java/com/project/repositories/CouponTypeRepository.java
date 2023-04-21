package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.CouponType;
import com.project.entities.Role;

public interface CouponTypeRepository extends JpaRepository<CouponType, Integer> {
	
}
