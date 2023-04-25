package com.project.service;

import java.util.List;

import com.project.models.InvoiceStatus;

public interface InvoiceStatusService {
	List<InvoiceStatus> findAll();
	
	InvoiceStatus findById(Integer id);
	
	InvoiceStatus save(InvoiceStatus invoiceStatus);
	
	Boolean delete(Integer id);
	
	Long count();
}
