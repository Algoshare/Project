package com.skuniv.project.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.AlgorithmService;
import com.skuniv.project.service.DetailService;

@Controller
public class DetailController {
	@Resource(name = "DetailService")
	DetailService service;
	@Resource(name = "AlgorithmService")
	AlgorithmService algoService;
	//���� �������������� Ȯ�� ��ư�� ������ �� ȣ��
	@RequestMapping(value = "/updateupQuestion")
	public ModelAndView updateupQuestion(HttpServletRequest request) throws Exception {
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
	public ModelAndView questionList(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
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

	//
	@RequestMapping(value = "/selectCertainRoom")
	public ModelAndView selectCertainRoom(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		String room_no = request.getParameter("room_no");
//		String name = request.getParameter("name");
//		String content = request.getParameter("content");
//		String img = request.getParameter("img");
		ModelAndView mv = new ModelAndView("detail");
		List<Map<String, Object>> list = service.selectCertainRoom(room_no);
		mv.addObject("detailRoomList", list);
		return mv;
	}
	//����list���� �ϳ��� Ŭ���ϸ� ������ questiondetail���������� ����ϴ� ����
	@RequestMapping(value = "/selectCertainQuestion")
	public ModelAndView selectCertainQuestion(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		ModelAndView mv = new ModelAndView("questiondetail");
		String q_no = request.getParameter("q_no");
//		String q_name = request.getParameter("q_name");
//		String q_content = request.getParameter("q_content");
//		String due = request.getParameter("due");
//		String room_no = request.getParameter("room_no");
//		String input = request.getParameter("input");
//		String output = request.getParameter("output");
//		List<LinkedHashMap<String, Object>> list = new LinkedList<LinkedHashMap<String, Object>>();
//		LinkedHashMap<String, Object> map = new LinkedHashMap<String, Object>();
//		map.put("q_no", q_no);
//		map.put("q_name", q_name);
//		map.put("q_content", q_content);
//		map.put("due", due);
//		map.put("room_no", room_no);
//		map.put("input", input);
//		map.put("output", output);
//		list.add(map);
		List<Map<String, Object>> list = algoService.selectAlgoList(q_no); 
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
	@RequestMapping(value ="/updateQuestion", method=RequestMethod.POST, headers="Content-Type=application/x-www-form-urlencoded")
	 public ModelAndView updateQuestion(@RequestBody Map<String, String> request) throws Exception {
		ModelAndView mv = new ModelAndView("questionupdateform");
		String q_no = request.get("q_no");
		String room_no = request.get("room_no");
		String q_name = request.get("q_name");
		String q_content = request.get("q_content");
		String input = request.get("input");
		String output = request.get("output");
		String due = request.get("due");
		q_content = q_content.replaceAll("<br>", "\r\n");
		input = input.replaceAll("<br>", "\r\n");
		output = output.replaceAll("<br>", "\r\n");
		List<LinkedHashMap<String, Object>> list = new LinkedList<LinkedHashMap<String, Object>>();
		LinkedHashMap<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("q_no", q_no);
		map.put("room_no", room_no);
		map.put("q_name", q_name);
		map.put("q_content", q_content);
		map.put("input", input);
		map.put("output", output);
		map.put("due", due);
		list.add(map);
		mv.addObject("updateQuestion",list);
		return mv;
	}
}
