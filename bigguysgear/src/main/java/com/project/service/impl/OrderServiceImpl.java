package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.Order;
import com.project.repositories.OrderRepository;
import com.project.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderRepository orderRepository;
	
	@Override
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public Order findById(Integer id) {
		return orderRepository.findById(id).get();
	}

	@Override
	public Order save(Order Order) {
		return orderRepository.save(Order);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			orderRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return orderRepository.count();
	}
	
	
}
