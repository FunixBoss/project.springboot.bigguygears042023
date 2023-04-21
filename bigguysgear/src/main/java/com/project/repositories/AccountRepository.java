package com.project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entities.Account;

public interface AccountRepository extends JpaRepository<Account, Integer> {
	
}
