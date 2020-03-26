package com.safe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.safe.dao.ISafeFood;
import com.safe.service.FoodService;
import com.safe.vo.FoodInfo;

@Controller
public class FoodController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	FoodService service;
	
	@GetMapping(value = "/list.food")
	public String list(Model model) {

		List<FoodInfo> list = service.selectAll();
		for (FoodInfo foodInfo : list) {
			System.out.println(foodInfo.getImg());
		}
		model.addAttribute("list", list);
		return "main";
	}
	@GetMapping(value = "/product.food")
	public String productList(Model model) {

		List<FoodInfo> list = service.selectAll();
		for (FoodInfo foodInfo : list) {
			System.out.println(foodInfo.getImg());
		}
		model.addAttribute("list", list);
		return "product";
	}
	@PostMapping(value = "/search.food")
	public String selecAll2(Model model,String word,String condition) {

	List<FoodInfo> Food = service.selectAll2(condition, word);

		model.addAttribute("list", Food);
		return "product";
	}
	@GetMapping(value = "/selectOne.food")
	public String selectOne(Model model,String code) {

		FoodInfo Food = service.selectOne(code);

		model.addAttribute("list", Food);
		return "list";
	}
	
	@GetMapping(value = "/detail.food")
	public String detail(Model model,String code) {

		FoodInfo Food = service.selectOne(code);

		model.addAttribute("f", Food);
		return "detail";
	}
	
	@GetMapping(value = "/bestProduct.food")
	public String best(Model model) {

		List<FoodInfo> Food = service.bestPro();

		model.addAttribute("list", Food);
		return "bestProduct";
	}
	
	

	

}
