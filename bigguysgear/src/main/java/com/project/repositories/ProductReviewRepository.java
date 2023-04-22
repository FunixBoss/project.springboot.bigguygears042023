package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.ProductReview;
import com.project.entities.Role;

public interface ProductReviewRepository extends JpaRepository<ProductReview, Integer> {
	
}
