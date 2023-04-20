package com.project.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.entities.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>{

}
