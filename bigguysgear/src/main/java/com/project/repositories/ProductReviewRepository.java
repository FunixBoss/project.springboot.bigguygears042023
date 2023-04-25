package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.ProductReview;
import com.project.models.Role;

public interface ProductReviewRepository extends JpaRepository<ProductReview, Integer> {
	
}
