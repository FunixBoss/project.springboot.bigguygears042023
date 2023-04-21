package com.project.service;

import java.util.List;

import com.project.entities.Invoice;

public interface InvoiceService {
	List<Invoice> findAll();
	
	Invoice findById(Integer id);
	
	Invoice save(Invoice invoice);
	
	Boolean delete(Integer id);
	
	Long count();
}
