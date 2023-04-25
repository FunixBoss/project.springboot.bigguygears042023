package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.AccountCoupon;
import com.project.models.AccountCouponId;
import com.project.models.Role;

public interface AccountCouponRepository extends JpaRepository<AccountCoupon, AccountCouponId> {
	
}
