package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.ProductSize;
import com.project.models.Role;

public interface ProductSizeRepository extends JpaRepository<ProductSize, Integer> {
	
}
