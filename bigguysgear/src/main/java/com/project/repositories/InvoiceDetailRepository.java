package com.project.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.entities.InvoiceDetail;
import com.project.entities.InvoiceDetailId;

@Repository
public interface InvoiceDetailRepository extends CrudRepository<InvoiceDetail, InvoiceDetailId>{

}
