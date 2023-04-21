package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Account;
import com.project.repositories.AccountRepository;
import com.project.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	private AccountRepository AccountRepository;
	
	@Override
	public List<Account> findAll() {
		return AccountRepository.findAll();
	}

	@Override
	public Account findById(Integer id) {
		return AccountRepository.findById(id).get();
	}

	@Override
	public Account save(Account Account) {
		return AccountRepository.save(Account);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			AccountRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return AccountRepository.count();
	}
	
	
}
