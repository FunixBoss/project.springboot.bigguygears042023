package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.OrderStatus;
import com.project.models.Role;

public interface OrderStatusRepository extends JpaRepository<OrderStatus, Integer> {
	
}
