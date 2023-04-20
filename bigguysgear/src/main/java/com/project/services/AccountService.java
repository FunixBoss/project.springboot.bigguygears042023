package com.project.services;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.project.entities.Account;


public interface AccountService extends UserDetailsService {
	Account findByUsername(String username);
	
	Account findById(Integer id);
	Account save(Account account);
	Iterable<Account> findAll();
	long count();
	void deleteById(Integer id);
}
