package com.skuniv.project.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.DetailService;

@Controller
public class DetailController {
	@Resource(name = "DetailService")
	DetailService service;

	//���� �������������� Ȯ�� ��ư�� ������ �� ȣ��
	@RequestMapping(value = "/updateQuestion")
	public ModelAndView updateRoom(HttpServletRequest request) throws Exception {
		String q_no = request.getParameter("q_no");
		String q_name = request.getParameter("q_name");
		String q_content = request.getParameter("q_content");
		String input = request.getParameter("input");
		String output = request.getParameter("output");
		String due = request.getParameter("due");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("q_no", q_no);
		map.put("q_name", q_name);
		map.put("q_content", q_content);
		map.put("input", input);
		map.put("output", output);
		map.put("due", due);

		service.updateQuestion(map);

		ModelAndView mv = new ModelAndView("jsonView");
		return mv;
	}

	//detail���������� room_no�� ����Ͽ� ������ list�� �������� �Լ�
	@RequestMapping(value = "/questionList")
	public ModelAndView userList(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectQuestionList(request.getParameter("room_no"));
		mv.addObject("questionList", list);
		return mv;
	}

	//q_no�� ����Ͽ� ���� ����
	@RequestMapping(value = "/deleteQuestion")
	public String deleteQuestion(HttpServletRequest request) throws Exception {
		String q_no = request.getParameter("q_no");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("q_no", q_no);
		service.deleteQuestion(map);

		return "main";
	}

	//mainȭ�鿡�� Ŭ���Ͽ� detail�������� �� �� ���Ǵ� �Լ�
	@RequestMapping(value = "/selectCertainRoom")
	public ModelAndView selectCertainRoom(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		String room_no = request.getParameter("room_no");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String img = request.getParameter("img");
		ModelAndView mv = new ModelAndView("detail");
		List<LinkedHashMap<String, Object>> list = new LinkedList<LinkedHashMap<String, Object>>();
		LinkedHashMap<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("room_no", room_no);
		map.put("name", name);
		map.put("content", content);
		map.put("img", img);
		list.add(map);
		mv.addObject("detailRoomList", list);
		return mv;
	}
	//����list���� �ϳ��� Ŭ���ϸ� ������ questiondetail���������� ����ϴ� ����
	@RequestMapping(value = "/selectCertainQuestion")
	public ModelAndView selectCertainQuestion(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		ModelAndView mv = new ModelAndView("questiondetail");
		String q_no = request.getParameter("q_no");
		String q_name = request.getParameter("q_name");
		String q_content = request.getParameter("q_content");
		String due = request.getParameter("due");
		String room_no = request.getParameter("room_no");
		String input = request.getParameter("input");
		String output = request.getParameter("output");
		List<LinkedHashMap<String, Object>> list = new LinkedList<LinkedHashMap<String, Object>>();
		LinkedHashMap<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("q_no", q_no);
		map.put("q_name", q_name);
		map.put("q_content", q_content);
		map.put("due", due);
		map.put("room_no", room_no);
		map.put("input", input);
		map.put("output", output);
		list.add(map);
		mv.addObject("detailQuestionList", list);
		return mv;
	}

	//���� �߰�
	@RequestMapping(value = "/insertQuestion")
	public ModelAndView insertQuestion(HttpServletRequest request) throws Exception {
		String q_name = request.getParameter("q_name");
		String q_content = request.getParameter("q_content");
		String due = request.getParameter("due");
		String room_no = request.getParameter("room_no");
		String input = request.getParameter("input");
		String output = request.getParameter("output");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("q_name", q_name);
		map.put("q_content", q_content);
		map.put("due", due);
		map.put("room_no", room_no);
		map.put("input", input);
		map.put("output", output);

		service.insertQuestion(map);

		ModelAndView mv = new ModelAndView("jsonView");
		return mv;
	}
}
