package com.project.service;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;

import com.project.models.Product;
import com.project.util.SortType;

public interface ProductService {
	List<Product> findAll();
	
	Page<Product> findByPages(Integer pageNumber, Integer pageSize, String sortField, SortType sortType, Integer categoryId, String status, String publishDate);
	
	Product findById(Integer id);
	
	Product save(Product product);
	
	Boolean delete(Integer id);
	
	Long count();
	
	Integer countForPages(Integer categoryId, String status, String publishDate);

}
