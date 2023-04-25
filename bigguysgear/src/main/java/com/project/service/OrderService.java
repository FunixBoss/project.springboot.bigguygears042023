package com.project.service;

import java.util.List;

import com.project.models.Order;

public interface OrderService {
	List<Order> findAll();
	
	Order findById(Integer id);
	
	Order save(Order order);
	
	Boolean delete(Integer id);
	
	Long count();
}
