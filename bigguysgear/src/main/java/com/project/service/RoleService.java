package com.project.service;

import java.util.List;

import com.project.models.Role;

public interface RoleService {
	List<Role> findAll();
	
	Role findById(Integer id);
	
	Role save(Role role);
	
	Boolean delete(Integer id);
	
	Long count();
}
