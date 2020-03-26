package com.safe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.safe.dao.ISafeFood;
import com.safe.dao.SafeFoodDAO;
import com.safe.vo.FoodInfo;


@Service
public class FoodServiceImpl implements FoodService {

	@Autowired
	ISafeFood dao;
	
	public List<FoodInfo> selectAll() {
		
		return dao.selectAll();
	}

	public FoodInfo selectOne(String code) {
		FoodInfo food =dao.selectOne(code);//성공하면
		dao.countUp(code);
		return food;
	}

	public List<FoodInfo> selectAll2(String condition, String word) {
		
		return dao.selectAll2(condition, word);
	}

	public void countUp(String num) {
		dao.countUp(num);
	}

	public List<FoodInfo> bestPro() {
		return dao.bestPro();
	}

}
