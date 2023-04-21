package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Invoice;
import com.project.repositories.InvoiceRepository;
import com.project.service.InvoiceService;

@Service
public class InvoiceServiceImpl implements InvoiceService{

	@Autowired
	private InvoiceRepository invoiceRepository;
	
	@Override
	public List<Invoice> findAll() {
		return invoiceRepository.findAll();
	}

	@Override
	public Invoice findById(Integer id) {
		return invoiceRepository.findById(id).get();
	}

	@Override
	public Invoice save(Invoice Invoice) {
		return invoiceRepository.save(Invoice);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			invoiceRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return invoiceRepository.count();
	}
	
	
}
