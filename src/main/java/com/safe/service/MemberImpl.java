package com.safe.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.safe.dao.IMember;
import com.safe.dao.MemberDAO;
import com.safe.vo.Member;

@Service
public class MemberImpl implements MemberService {
	
	@Autowired
	IMember mdao;
	
	public boolean checkLogin(String id, String pass) {
		return mdao.checkLogin(id, pass);
	}

	public void insert(Member m) {
		mdao.insert(m);
	}

	public String selectEmail(String id) {
		return mdao.selectEmail(id);
	}

	public boolean updateInfo(String id, String pass, String name, String email, String allergy) {
		return mdao.updateInfo(id, pass, name, email, allergy);
		
		
	}

	public boolean delete(String id) {
		return mdao.delete(id);
	}

	public HashMap<String, Integer> allergyPriority() {
		return mdao.allergyPriority();
	}

	public Member findbyEmail(String email) {
		
		return mdao.findbyEmail(email);
	}

}
