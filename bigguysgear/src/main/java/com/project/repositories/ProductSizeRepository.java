package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.ProductSize;
import com.project.entities.ProductSizeId;
import com.project.entities.Role;

public interface ProductSizeRepository extends JpaRepository<ProductSize, ProductSizeId> {
	
}
