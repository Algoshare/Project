package com.skuniv.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.MainService;

@Controller
public class MainController {
	@Resource(name = "MainService")
	MainService service;
	
	//main화면에 나오는 모든 room을 읽어오는 함수
	@RequestMapping(value = "/roomList")
	public ModelAndView userList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectRoomList();
		mv.addObject("roomList", list);
		return mv;
	}
	//room_no를 이용해 방 삭제
	@RequestMapping(value = "/deleteRoom")
	public String deleteRoom(HttpServletRequest request) throws Exception {
		String room_no = request.getParameter("room_no");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("room_no", room_no);
		service.deleteRoom(map);
		
		return "main";
	}
	//room_no를 이용해 방 수정
	@RequestMapping(value = "/updateRoom")
	public ModelAndView updateRoom(HttpServletRequest request) throws Exception {
		String room_no = request.getParameter("room_no");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
//		String img = request.getParameter("img");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("room_no", room_no);
		map.put("name", name);
		map.put("content", content);
		
		service.updateRoom(map);
		
		ModelAndView mv = new ModelAndView("jsonView");
		return mv;
	}
	//방만들기
	@RequestMapping(value = "/insertRoom")
	public ModelAndView insertRoom(HttpServletRequest request) throws Exception {
		String name = request.getParameter("name");
		String content = request.getParameter("content");
//		String img = request.getParameter("img");
		String img = "alg.png";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("content", content);
		map.put("img", img);
		
		service.insertRoom(map);
		
		ModelAndView mv = new ModelAndView("jsonView");
		return mv;
	}
}
