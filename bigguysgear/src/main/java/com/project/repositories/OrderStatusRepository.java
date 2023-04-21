package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.OrderStatus;
import com.project.entities.Role;

public interface OrderStatusRepository extends JpaRepository<OrderStatus, Integer> {
	
}
