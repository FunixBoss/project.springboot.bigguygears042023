package com.project.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.hibernate.internal.util.beans.BeanInfoHelper.ReturningBeanInfoDelegate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.project.models.Product;
import com.project.models.specifications.ProductSpecification;
import com.project.repositories.ProductRepository;
import com.project.service.ProductService;
import com.project.util.SortType;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return productRepository.findById(id).get();
	}

	@Override
	public Product save(Product Product) {
		return productRepository.save(Product);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			productRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return productRepository.count();
	}

	@Override
	public Page<Product> findByPages(
			Integer pageNumber, Integer pageSize, String sortField, SortType sortType,
			Integer categoryId, String status, String publishDate) {
		
	    Pageable pageable = PageRequest.of
	    		(pageNumber, pageSize, (sortType == SortType.DESCENDING ?  Sort.Direction.DESC : Sort.Direction.ASC), sortField);
	    
	    Specification<Product> spec = Specification.where(null);
	    if (categoryId != null) {
	        spec = spec.and(ProductSpecification.hasCategory(categoryId));
	    }
	    
	    if (status != null) {
	        if (status.equals("in_stock")) {
	            spec = spec.and(ProductSpecification.isInStock());
	        } else if (status.equals("out_of_stock")) {
	            spec = spec.and(ProductSpecification.isOutOfStock());
	        }
	    }
	    
	    if (publishDate != null) {
	    	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
	    	Date date = null;
			try {
				date = formatter.parse(publishDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
	        spec = spec.and(ProductSpecification.publishedBefore(date));
	    }
	    
	    // Use the specification & pageable -> to retrieve a Page of Products from the repository
	    Page<Product> products = productRepository.findAll(spec, pageable);
	    return products;
	}

	@Override
	public Integer countForPages(Integer categoryId, String status, String publishDate) {
		Specification<Product> spec = Specification.where(null);

	    if (categoryId != null) {
	        spec = spec.and(ProductSpecification.hasCategory(categoryId));
	    }

	    if (status != null) {
	    	if(status.equalsIgnoreCase("in_stock")) {
	    		spec = spec.and(ProductSpecification.isInStock());
	    	} else {
	    		spec = spec.and(ProductSpecification.isOutOfStock());
	    	}
	    }

	    if (publishDate != null) {
	    	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
	    	Date date = null;
			try {
				date = formatter.parse(publishDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
	        spec = spec.and(ProductSpecification.publishedBefore(date));
	    }

	    
	    return (int) Math.ceil((double)productRepository.count(spec) / 10);
	}
	
	
}
