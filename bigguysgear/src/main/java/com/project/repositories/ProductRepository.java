package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.Product;
import com.project.entities.Role;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	
}
