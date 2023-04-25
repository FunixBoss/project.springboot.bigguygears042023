package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.Order;
import com.project.models.Role;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	
}
