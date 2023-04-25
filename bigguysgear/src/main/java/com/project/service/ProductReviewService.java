package com.project.service;

import java.util.List;

import com.project.models.ProductReview;

public interface ProductReviewService {
	List<ProductReview> findAll();
	
	ProductReview findById(Integer id);
	
	ProductReview save(ProductReview product);
	
	Boolean delete(Integer id);
	
	Long count();
}
