package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.OrderStatus;
import com.project.repositories.OrderStatusRepository;
import com.project.service.OrderStatusService;

@Service
public class OrderStatusServiceImpl implements OrderStatusService{

	@Autowired
	private OrderStatusRepository orderStatusRepository;
	
	@Override
	public List<OrderStatus> findAll() {
		return orderStatusRepository.findAll();
	}

	@Override
	public OrderStatus findById(Integer id) {
		return orderStatusRepository.findById(id).get();
	}

	@Override
	public OrderStatus save(OrderStatus OrderStatus) {
		return orderStatusRepository.save(OrderStatus);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			orderStatusRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return orderStatusRepository.count();
	}
	
	
}
