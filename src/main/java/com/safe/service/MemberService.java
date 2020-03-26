package com.safe.service;

import java.util.HashMap;

import com.safe.vo.Member;

public interface MemberService {

public boolean checkLogin(String id, String pass);
public void insert(Member m);
public String selectEmail(String id);
public boolean updateInfo(String id, String pass, String name, String email, String allergy);
public boolean delete(String id);
public HashMap<String, Integer> allergyPriority();
public Member findbyEmail(String email);

}
