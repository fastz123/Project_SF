package com.safe.dao;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.safe.vo.FoodInfo;


@Repository
public class SafeFoodDAO implements ISafeFood {

	@Autowired
	SqlSession session;
	
	public List<FoodInfo> selectAll() {
		List<FoodInfo> list = session.selectList("sql.pms.selectAll");
		return list;
	}

	public List<FoodInfo> selectAll2(String condition, String word) {
		System.out.println(condition);
		System.out.println(word);
		List<FoodInfo> list=null;
		if(condition.equals("name")) {
			list =session.selectList("sql.pms.selectAllbyname",word);
			return list;
		}else if(condition.equals("material")) {
			list=session.selectList("selectAllbymaterial",word);
					
			return list;
		}
		System.out.println(list.get(0).getName());
		return list;
	}
	
	
	public FoodInfo selectOne(String code) {
		
		return session.selectOne("sql.pms.selectOne",code);
	}


	public void countUp(String num) {
		session.update("sql.pms.countUp", num);
	}

	public List<FoodInfo> bestPro() {
		
		return session.selectList("sql.pms.bestPro");
	}}
