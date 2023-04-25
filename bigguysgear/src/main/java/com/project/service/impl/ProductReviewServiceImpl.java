package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.ProductReview;
import com.project.repositories.ProductReviewRepository;
import com.project.service.ProductReviewService;

@Service
public class ProductReviewServiceImpl implements ProductReviewService{

	@Autowired
	private ProductReviewRepository reviewRepository;
	
	@Override
	public List<ProductReview> findAll() {
		return reviewRepository.findAll();
	}

	@Override
	public ProductReview findById(Integer id) {
		return reviewRepository.findById(id).get();
	}

	@Override
	public ProductReview save(ProductReview Review) {
		return reviewRepository.save(Review);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			reviewRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return reviewRepository.count();
	}
	
	
}
