package com.project.service;

import java.util.List;

import com.project.models.PaymentMethod;

public interface PaymentMethodService {
	List<PaymentMethod> findAll();
	
	PaymentMethod findById(Integer id);
	
	PaymentMethod save(PaymentMethod product);
	
	Boolean delete(Integer id);
	
	Long count();
}
