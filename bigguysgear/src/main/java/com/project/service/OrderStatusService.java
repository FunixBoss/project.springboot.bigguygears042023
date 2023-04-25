package com.project.service;

import java.util.List;

import com.project.models.OrderStatus;

public interface OrderStatusService {
	List<OrderStatus> findAll();
	
	OrderStatus findById(Integer id);
	
	OrderStatus save(OrderStatus product);
	
	Boolean delete(Integer id);
	
	Long count();
}
