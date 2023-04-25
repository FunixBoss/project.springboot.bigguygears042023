package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.InvoiceStatus;
import com.project.repositories.InvoiceStatusRepository;
import com.project.service.InvoiceStatusService;

@Service
public class InvoiceStatusServiceImpl implements InvoiceStatusService{

	@Autowired
	private InvoiceStatusRepository invoiceStatusRepository;
	
	@Override
	public List<InvoiceStatus> findAll() {
		return invoiceStatusRepository.findAll();
	}

	@Override
	public InvoiceStatus findById(Integer id) {
		return invoiceStatusRepository.findById(id).get();
	}

	@Override
	public InvoiceStatus save(InvoiceStatus InvoiceStatus) {
		return invoiceStatusRepository.save(InvoiceStatus);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			invoiceStatusRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return invoiceStatusRepository.count();
	}
	
	
}
