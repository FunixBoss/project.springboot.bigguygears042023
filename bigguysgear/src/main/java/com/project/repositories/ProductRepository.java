package com.project.repositories;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.models.Product;
	
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>, JpaSpecificationExecutor<Product> {

	@Query("SELECT p FROM Product p WHERE p.category.categoryId = :categoryId")
	Page<Product> findAllByCategoryId(Pageable pageable, @Param("categoryId") Integer categoryId);
	
	
	@Query("select count(id) from Product where category_id = :categoryId")
	long countByCategorydId(@Param("categoryId") Integer categoryId);
}
