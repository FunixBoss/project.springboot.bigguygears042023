package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.Cart;
import com.project.models.Role;

public interface CartRepository extends JpaRepository<Cart, Integer> {
	
	
}
