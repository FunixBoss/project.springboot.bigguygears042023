package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.Order;
import com.project.entities.Role;

public interface OrderRepository extends JpaRepository<Order, Integer> {
	
}
