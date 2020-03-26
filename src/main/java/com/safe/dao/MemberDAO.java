package com.safe.dao;


import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.safe.vo.Member;

@Repository
public class MemberDAO implements IMember {
	
	@Autowired
	SqlSession session;
	
	public boolean checkLogin(String id, String pass) {
		boolean find = false;
		Member m = session.selectOne("mem.checkLogin",id);
		if(m.getPass().equals(pass))
			find = true;
		return find;
	}

	public void insert(Member m) {
		session.insert("mem.insert",m);
		
	}

	public String selectEmail(String id) {
		Member m = session.selectOne("mem.selectEmail",id);
		return m.getEmail();
	}

	public boolean updateInfo(String id, String pass, String name, String email, String allergy) {
		Member m = new Member(id, pass, name, email, allergy);
		int change = 0;
		change = session.update("mem.updateInfo", m);
		if(change==0)
		return false;
		else
		return true;
		
	}

	public boolean delete(String id) {
		int change = 0;
		change = session.delete("mem.delete",id);
		if(change==0)
		return false;
		else
		return true;

		
	}

	public HashMap<String, Integer> allergyPriority() {
		// TODO Auto-generated method stub
		return null;
	}

	public Member findbyEmail(String email) {
		
		return session.selectOne("findbyEmail" ,email);
	}
	
}