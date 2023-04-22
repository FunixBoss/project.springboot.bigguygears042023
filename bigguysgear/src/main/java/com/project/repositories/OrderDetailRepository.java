package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	
}
