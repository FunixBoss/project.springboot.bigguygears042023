package com.project.services;

import com.project.entities.Invoice;
import com.project.entities.Product;

public interface ProductService {
	Product findById(Integer id);
	Product save(Product product);
	Iterable<Product> findAll();
	long count();
	void deleteById(Integer id);
}
