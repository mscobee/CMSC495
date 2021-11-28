package com.project.CMSC495;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("CostService")
public class CostServiceImplement implements CostService{
	
	@Autowired
	CostRepository costRepository;

	@Override
	public Iterable<Cost> getAllCost() {
		return costRepository.findAll();
	}
}
