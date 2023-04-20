package com.project.services.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Invoice;
import com.project.repositories.InvoiceRepository;
import com.project.services.InvoiceService;

@Service
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	private InvoiceRepository invoiceRepository;
	
	@Override
	public Iterable<Invoice> findAll() {
		return invoiceRepository.findAll();
	}

	@Override
	public Invoice save(Invoice invoice) {
		return invoiceRepository.save(invoice);
	}

	@Override
	public Invoice findById(Integer id) {
		return invoiceRepository.findById(id).get();
	}

	@Override
	public long count() {
		return invoiceRepository.count();
	}

	@Override
	public void deleteById(Integer id) {
		invoiceRepository.deleteById(id);
	}


}
