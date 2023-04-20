package com.project.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.InvoiceDetail;
import com.project.entities.InvoiceDetailId;
import com.project.repositories.InvoiceDetailRepository;
import com.project.services.InvoiceDetailService;

@Service
public class InvoiceDetailServiceImpl implements InvoiceDetailService {

	@Autowired
	private InvoiceDetailRepository invoiceDetailRepository;

	@Override
	public InvoiceDetail save(InvoiceDetail invoiceDetail) {
		return invoiceDetailRepository.save(invoiceDetail);
	}

	@Override
	public InvoiceDetail findById(InvoiceDetailId id) {
		return invoiceDetailRepository.findById(id).get();
	}

	@Override
	public Iterable<InvoiceDetail> findAll() {
		return invoiceDetailRepository.findAll();
	}

	@Override
	public long count() {
		return invoiceDetailRepository.count();
	}

	@Override
	public void deleteById(InvoiceDetailId id) {
		invoiceDetailRepository.deleteById(id);
	}

}
