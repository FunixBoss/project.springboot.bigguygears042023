package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.Invoice;
import com.project.models.Role;

public interface InvoiceRepository extends JpaRepository<Invoice, Integer> {
	
}
