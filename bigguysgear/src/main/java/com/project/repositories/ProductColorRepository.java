package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.ProductColor;

public interface ProductColorRepository extends JpaRepository<ProductColor, Integer> {
	
}
