package com.skuniv.project.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.UserService;

@Controller
public class UserController {
	@Resource(name = "UserService")
	UserService service;

	// user list display
	@RequestMapping(value = "/userList")
	public ModelAndView userList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectUserList(commandMap);
		mv.addObject("userList", list);
		return mv;
	}
}
