package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.PaymentMethod;
import com.project.entities.Role;

public interface PaymentMethodRepository extends JpaRepository<PaymentMethod, Integer> {
	
}
