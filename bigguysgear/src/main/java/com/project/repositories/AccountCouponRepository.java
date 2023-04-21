package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.AccountCoupon;
import com.project.entities.AccountCouponId;
import com.project.entities.Role;

public interface AccountCouponRepository extends JpaRepository<AccountCoupon, AccountCouponId> {
	
}
