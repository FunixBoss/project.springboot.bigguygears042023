package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.models.Account;
import com.project.models.Category;
import com.project.models.Role;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
	
}
