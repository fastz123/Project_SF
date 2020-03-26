package com.safe.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.safe.service.NoticeService;
import com.safe.vo.Notice;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;


@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@Api("NoticeList Rest API")
public class RestNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="notice", method=RequestMethod.POST)
	@ApiOperation("질문 등록")
	public Map RegNotice(@RequestBody Notice notice) throws Exception {
		System.out.println(notice);
		noticeService.insert(notice);
		Map<String, String> map = new HashMap<String, String>();
		map.put("result", "등록성공");
		return map;
		
	}
	
	@RequestMapping(value="notice/{num}", method=RequestMethod.DELETE)
	@ApiOperation("질문 삭제")
	public Map DelNotice(@PathVariable String num ) throws Exception {
		noticeService.delete(num);
		Map<String, String> map = new HashMap<String, String>();
		map.put("result", "삭제성공");
		return map;
		
	}
	
	@RequestMapping(value="notice", method=RequestMethod.GET)
	@ApiOperation("질문 리스트")
	public List<Notice> ListQna() throws Exception {
		System.out.println("selectAll");
		return noticeService.selectAll();
	}
	
	@RequestMapping(value="notice/{num}", method=RequestMethod.GET)
	@ApiOperation("질문 하나 선택")
	public Notice selectNotice(@PathVariable String num) throws Exception{
		return noticeService.selectOne(num);
	}
	
	
	@RequestMapping(value="notice/{content}", method=RequestMethod.PUT)
	@ApiOperation("질문 하나 선택")
	public Map UpdateNotice(@PathVariable String content) throws Exception{
		noticeService.update(content);
		Map<String, String> map = new HashMap<String, String>();
		map.put("result", "답변 등록 성공");
		return map;
	}
}
