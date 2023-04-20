package com.project.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.entities.Category;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Integer>{
	
}
