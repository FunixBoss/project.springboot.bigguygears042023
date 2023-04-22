package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.ProductVariant;

public interface ProductVariantRepository extends JpaRepository<ProductVariant, Integer> {
	
}
