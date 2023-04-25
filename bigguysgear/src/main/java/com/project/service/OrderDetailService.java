package com.project.service;

import java.util.List;

import com.project.models.OrderDetail;

public interface OrderDetailService {
	List<OrderDetail> findAll();
	
	OrderDetail findById(Integer id);
	
	OrderDetail save(OrderDetail OrderDetail);
	
	Boolean delete(Integer id);
	
	Long count();
}
