package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;
import com.project.entities.Role;
import com.project.entities.Size;

public interface SizeRepository extends JpaRepository<Size, Integer> {
	
}
