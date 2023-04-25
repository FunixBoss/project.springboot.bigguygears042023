package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.CartDetail;

public interface CartDetailRepository extends JpaRepository<CartDetail, Integer> {
	
	
}
