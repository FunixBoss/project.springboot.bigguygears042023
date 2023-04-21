package com.project.service;

import java.util.List;

import com.project.entities.Size;

public interface SizeService {
	List<Size> findAll();
	
	Size findById(Integer id);
	
	Size save(Size size);
	
	Boolean delete(Integer id);
	
	Long count();
}
