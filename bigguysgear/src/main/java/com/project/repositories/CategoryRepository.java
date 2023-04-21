package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.Category;
import com.project.entities.Role;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
	
}
