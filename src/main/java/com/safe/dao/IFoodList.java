package com.safe.dao;

import java.util.List;

import com.safe.vo.FoodInfo;

public interface IFoodList {
	public List<FoodInfo> SelectAll(String id);
	public void insert(String id, String code);
	public void delete(String id, String code);
}
