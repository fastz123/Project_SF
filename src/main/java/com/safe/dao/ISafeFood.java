package com.safe.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.safe.vo.FoodInfo;

public interface ISafeFood {
	public List<FoodInfo> selectAll();
	public FoodInfo selectOne(String code);
	public List<FoodInfo> selectAll2(String condition, String word);
	public void countUp(String num);
	public List<FoodInfo> bestPro();
	
}
