package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.Review;
import com.project.entities.Role;

public interface ReviewRepository extends JpaRepository<Review, Integer> {
	
}
