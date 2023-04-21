package com.project.service;

import java.util.List;

import com.project.entities.Account;

public interface AccountService {
	List<Account> findAll();
	
	Account findById(Integer id);
	
	Account save(Account account);
	
	Boolean delete(Integer id);
	
	Long count();
}
