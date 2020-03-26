package com.safe.dao;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.safe.vo.Member;

public interface IMember {
public boolean checkLogin(String id, String pass);
public void insert(Member m);
public String selectEmail(String id);
public boolean updateInfo(String id, String pass, String name, String email, String allergy);
public boolean delete(String id);
public HashMap<String, Integer> allergyPriority();
public Member findbyEmail(String email);
}