	package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Cart;
import com.project.repositories.CartRepository;
import com.project.service.CartService;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartRepository cartRepository;
	
	@Override
	public List<Cart> findAll() {
		return cartRepository.findAll();
	}

	@Override
	public Cart findById(Integer id) {
		return cartRepository.findById(id).get();
	}

	@Override
	public Cart save(Cart Cart) {
		return cartRepository.save(Cart);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			cartRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return cartRepository.count();
	}
	
}
