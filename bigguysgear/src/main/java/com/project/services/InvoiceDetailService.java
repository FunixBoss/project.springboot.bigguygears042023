package com.project.services;

import com.project.entities.InvoiceDetail;
import com.project.entities.InvoiceDetailId;

public interface InvoiceDetailService {

	InvoiceDetail findById(InvoiceDetailId id);
	InvoiceDetail save(InvoiceDetail invoiceDetail);
	Iterable<InvoiceDetail> findAll();
	long count();
	void deleteById(InvoiceDetailId id);
}
