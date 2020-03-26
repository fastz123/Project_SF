package com.safe.service;

import java.util.List;

import com.safe.vo.FoodInfo;

public interface FoodService {
	public List<FoodInfo> selectAll();
	public FoodInfo selectOne(String code);
	public List<FoodInfo> selectAll2(String condition, String word);
	public void countUp(String num);
	public List<FoodInfo> bestPro();
	
	
}
