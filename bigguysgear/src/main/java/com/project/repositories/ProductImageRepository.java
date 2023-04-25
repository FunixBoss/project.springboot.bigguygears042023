package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.ProductImage;

public interface ProductImageRepository extends JpaRepository<ProductImage, Integer> {
	
}
