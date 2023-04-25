package com.project.service;

import java.util.List;

import com.project.models.CartDetail;

public interface CartDetailService {
	List<CartDetail> findAll();
	
	CartDetail findById(Integer id);
	
	CartDetail save(CartDetail CartDetail);
	
	Boolean delete(Integer id);
	
	Long count();
}
