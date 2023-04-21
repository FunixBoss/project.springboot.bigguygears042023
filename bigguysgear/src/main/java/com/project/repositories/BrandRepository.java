package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.Brand;
import com.project.entities.Role;

public interface BrandRepository extends JpaRepository<Brand, Integer> {
	
}
