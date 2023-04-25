package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.ProductBrand;
import com.project.models.Role;

public interface ProductBrandRepository extends JpaRepository<ProductBrand, Integer> {
	
}
