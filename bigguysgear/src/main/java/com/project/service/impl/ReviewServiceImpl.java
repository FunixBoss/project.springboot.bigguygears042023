package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Review;
import com.project.repositories.ReviewRepository;
import com.project.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewRepository reviewRepository;
	
	@Override
	public List<Review> findAll() {
		return reviewRepository.findAll();
	}

	@Override
	public Review findById(Integer id) {
		return reviewRepository.findById(id).get();
	}

	@Override
	public Review save(Review Review) {
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
