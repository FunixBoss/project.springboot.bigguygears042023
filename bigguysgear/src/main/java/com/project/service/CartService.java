package com.project.service;

import java.util.List;

import com.project.entities.Cart;

public interface CartService {
	List<Cart> findAll();
	
	Cart findById(Integer id);
	
	Cart save(Cart cart);
	
	Boolean delete(Integer id);
	
	Long count();
}
