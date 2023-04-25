package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.InvoiceStatus;
import com.project.models.Role;

public interface InvoiceStatusRepository extends JpaRepository<InvoiceStatus, Integer> {
	
}
