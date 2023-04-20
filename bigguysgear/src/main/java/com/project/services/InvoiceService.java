package com.project.services;


import com.project.entities.Invoice;

public interface InvoiceService {

	Invoice findById(Integer id);
	Invoice save(Invoice invoice);
	Iterable<Invoice> findAll();
	long count();
	void deleteById(Integer id);
}
