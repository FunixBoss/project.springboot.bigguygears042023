package com.project.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.project.entities.Account;
import com.project.entities.Role;
import com.project.repositories.AccountRepository;
import com.project.services.AccountService;


@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepository accountRepository;
	
	@Override
	public Iterable<Account> findAll() {
		return accountRepository.findAll();
	}

	@Override
	public Account save(Account account) {
		return accountRepository.save(account);
	}

	
//	trả về UserDetails -> (khi làm việc với Spring Security, nhiệm vụ có mình là cung cấp cho nó tk 
//						   có username, password, roles gì, còn spring sẽ tự động làm những hành động tiếp theo)
//	class kế thừa nó là User
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountRepository.findByUsername(username);
		if(account == null) {
			throw new UsernameNotFoundException("Username not found");
		}
		
//		GrantedAuthority chỉ là interface
		List<GrantedAuthority> roles = new ArrayList<>();
		for(Role role : account.getRoles()) {
			roles.add(new SimpleGrantedAuthority(role.getName()));
		}
		
		return new User(username, account.getPassword(), roles);
	}

	@Override
	public Account findByUsername(String username) {
		return accountRepository.findByUsername(username);
	}

	@Override
	public Account findById(Integer id) {
		return accountRepository.findById(id).get();
	}

	@Override
	public long count() {
		return accountRepository.count();
	}

	@Override
	public void deleteById(Integer id) {
		accountRepository.deleteById(id);
	}

}
