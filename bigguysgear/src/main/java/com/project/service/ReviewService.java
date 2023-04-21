package com.project.service;

import java.util.List;

import com.project.entities.Review;

public interface ReviewService {
	List<Review> findAll();
	
	Review findById(Integer id);
	
	Review save(Review product);
	
	Boolean delete(Integer id);
	
	Long count();
}
