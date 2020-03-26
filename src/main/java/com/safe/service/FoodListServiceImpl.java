package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.safe.dao.IFoodList;
import com.safe.vo.FoodInfo;

@Service
public class FoodListServiceImpl implements FoodListService{
	@Autowired
	IFoodList dao;
	
	public List<FoodInfo> SelectAll(String id) {
		return dao.SelectAll(id);
	}

	public void insert(String id, String code) {
		dao.insert(id, code);
	}

	public void delete(String id, String code) {
		dao.delete(id, code);
	}
	
	
}
