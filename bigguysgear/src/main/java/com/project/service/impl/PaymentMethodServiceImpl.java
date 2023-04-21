package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.PaymentMethod;
import com.project.repositories.PaymentMethodRepository;
import com.project.service.PaymentMethodService;

@Service
public class PaymentMethodServiceImpl implements PaymentMethodService{

	@Autowired
	private PaymentMethodRepository paymentMethodRepository;
	
	@Override
	public List<PaymentMethod> findAll() {
		return paymentMethodRepository.findAll();
	}

	@Override
	public PaymentMethod findById(Integer id) {
		return paymentMethodRepository.findById(id).get();
	}

	@Override
	public PaymentMethod save(PaymentMethod PaymentMethod) {
		return paymentMethodRepository.save(PaymentMethod);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			paymentMethodRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return paymentMethodRepository.count();
	}
	
	
}
