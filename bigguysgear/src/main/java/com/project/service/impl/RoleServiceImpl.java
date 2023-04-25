package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.Role;
import com.project.repositories.RoleRepository;
import com.project.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleRepository roleRepository;
	
	@Override
	public List<Role> findAll() {
		return roleRepository.findAll();
	}

	@Override
	public Role findById(Integer id) {
		return roleRepository.findById(id).get();
	}

	@Override
	public Role save(Role Role) {
		return roleRepository.save(Role);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			roleRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return roleRepository.count();
	}
	
	
}
