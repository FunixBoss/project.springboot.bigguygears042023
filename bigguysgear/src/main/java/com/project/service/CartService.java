package com.project.service;

import java.util.List;

import com.project.models.Cart;

public interface CartService {
	List<Cart> findAll();
	
	Cart findById(Integer id);
	
	Cart save(Cart cart);
	
	Boolean delete(Integer id);
	
	Long count();
}
