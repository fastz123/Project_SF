package com.safe.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.safe.dao.IMember;
import com.safe.service.MemberService;
import com.safe.vo.Member;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	
	
	@ExceptionHandler
	public ModelAndView handler(Exception e) {
		 ModelAndView mav = new ModelAndView("ErrorHandler");
		 mav.addObject("msg", e.getMessage());
		 return mav;
	}
	
	@PostMapping(value="/dologin.member")
	public String checkLogin(String id, String pass, HttpSession session, HttpServletResponse res) {
		boolean find = service.checkLogin(id, pass);
		System.out.println(find);
		if (find == true) {
			res.setContentType("text/html; charset=UTF-8");

			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			out.println("<script> alert('로그인에 성공했습니다.'); </script>");
			session.setAttribute("id", id);

			out.flush();

			return "main";
		} else {
			res.setContentType("text/html; charset=UTF-8");

			PrintWriter out = null;
			try {
				out = res.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			out.println("<script>alert('로그인에 실패했습니다.'); location.href='login.food';</script>");

			out.flush();
			return "main";
		}
	}
	
	@RequestMapping(value="/login.food")
	public String Login() {
		
		return "login";
	}
	
	@RequestMapping(value="/logout.food")
	public String logout(HttpSession session, String id) {
		session.setAttribute("id", null);
		return "redirect:/list.food"; 
	}
	
	@RequestMapping(value="/reg.food")
	public String reg() {
		return "signUp"; 
	}
	
	@RequestMapping(value="/insert.food")
	public String doreg(String id,String pass,String name,String email,String[] d ) {
		String str="";
		for(int i=0 ; i<d.length; i++) {
			str+=d[i]+",";
		}
		Member m =  new Member(id, pass, name, email, str);
		service.insert(m);
		return "redirect:/list.food"; 
	
	}
	
	@RequestMapping(value="/findMember.food")
	public String findbyEmail(String email) {
		
		
		return "findmember"; 
	
	}
	@RequestMapping(value="/dofindMember.food")
	public String dofindbyEmail(String email, Model model) {
		
		Member member=service.findbyEmail(email);
		model.addAttribute("member",member);
		return "showIDPW"; 
	
	}
	@RequestMapping(value="/myPage.food")
	public String mypage( HttpSession session) {
	String id=(String)session.getAttribute("id");
	String email = service.selectEmail(id);
	session.setAttribute("email", email);
	return "myPage";
	}

	@RequestMapping(value="/update.food")
	public String update(HttpSession session,String pass, String name, String[] d) {
	String allergy = "";
	String msg = "";
	for(int i=0;i<d.length;i++) {
	allergy += d[i]+",";
	}
	String id = (String)session.getAttribute("id");
	String email = (String)session.getAttribute("email");
	if(service.updateInfo(id, pass, name, email, allergy)) {
	msg = "정보 변경 완료!";
	session.setAttribute("msg", msg);
	return "actionSuccess";
	}
	else {
	msg = "정보 변경 실패!";
	session.setAttribute("msg", msg);
	return "Error";
	}
	}

	@RequestMapping(value="/delete.food")
	public String delete(String id, HttpSession session) {
	String msg = "";
	if(service.delete(id)) {
	msg = "정보 삭제 완료!";
	session.setAttribute("msg", msg);
	return "actionSuccess";
	}
	else {
	msg = "정보 삭제 실패!";
	session.setAttribute("msg", msg);
	return "Error";
	}
	}
	
//	@RequestMapping(value="")
//	public String insert(Member m) {
//		service.insert(m);
//	}
	
	
}
