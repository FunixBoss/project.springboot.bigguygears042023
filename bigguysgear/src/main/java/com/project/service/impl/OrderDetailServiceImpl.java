package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.OrderDetail;
import com.project.repositories.OrderDetailRepository;
import com.project.service.OrderDetailService;

@Service
public class OrderDetailServiceImpl implements OrderDetailService{

	@Autowired
	private OrderDetailRepository orderDetailRepository;
	
	@Override
	public List<OrderDetail> findAll() {
		return orderDetailRepository.findAll();
	}

	@Override
	public OrderDetail findById(Integer id) {
		return orderDetailRepository.findById(id).get();
	}

	@Override
	public OrderDetail save(OrderDetail order) {
		return orderDetailRepository.save(order);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			orderDetailRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return orderDetailRepository.count();
	}
	
	
}
