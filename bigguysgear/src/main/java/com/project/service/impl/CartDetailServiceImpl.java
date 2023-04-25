	package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.CartDetail;
import com.project.repositories.CartDetailRepository;
import com.project.repositories.CartRepository;
import com.project.service.CartDetailService;
import com.project.service.CartService;

@Service
public class CartDetailServiceImpl implements CartDetailService{

	@Autowired
	private CartDetailRepository cartDetailRepository;
	
	@Override
	public List<CartDetail> findAll() {
		return cartDetailRepository.findAll();
	}

	@Override
	public CartDetail findById(Integer id) {
		return cartDetailRepository.findById(id).get();
	}

	@Override
	public CartDetail save(CartDetail cartDetail) {
		return cartDetailRepository.save(cartDetail);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			cartDetailRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return cartDetailRepository.count();
	}
	
}
