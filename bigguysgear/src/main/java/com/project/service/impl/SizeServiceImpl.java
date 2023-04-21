package com.project.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entities.Size;
import com.project.repositories.SizeRepository;
import com.project.service.SizeService;

@Service
public class SizeServiceImpl implements SizeService{

	@Autowired
	private SizeRepository sizeRepository;
	
	@Override
	public List<Size> findAll() {
		return sizeRepository.findAll();
	}

	@Override
	public Size findById(Integer id) {
		return sizeRepository.findById(id).get();
	}

	@Override
	public Size save(Size Size) {
		return sizeRepository.save(Size);
	}

	@Override
	public Boolean delete(Integer id) {
		try {
			sizeRepository.deleteById(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Long count() {
		return sizeRepository.count();
	}
	
	
}
