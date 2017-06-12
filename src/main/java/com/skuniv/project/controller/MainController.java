package com.skuniv.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.MainService;

@Controller
public class MainController {
	@Resource(name = "MainService")
	MainService service;
	
	
	
	//main화占썽에 占쏙옙占쏙옙占쏙옙 占쏙옙占� room占쏙옙 占싻억옙占쏙옙占� 占쌉쇽옙
	@RequestMapping(value = "/roomList")
	public ModelAndView userList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectRoomList();
		mv.addObject("roomList", list);
		return mv;
	}
	//room_no占쏙옙 占싱울옙占쏙옙 占쏙옙 占쏙옙占쏙옙
	@RequestMapping(value = "/deleteRoom")
	public String deleteRoom(HttpServletRequest request) throws Exception {
		String room_no = request.getParameter("room_no");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("room_no", room_no);
		service.deleteRoom(map);
		
		return "main";
	}
	//room_no占쏙옙 占싱울옙占쏙옙 占쏙옙 占쏙옙占쏙옙
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
	//
	@RequestMapping(value = "/insertRoom", method=RequestMethod.POST)
	public ModelAndView insertRoom(MultipartHttpServletRequest request) throws IllegalStateException, IOException  {
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		
		Map<String, MultipartFile> files = request.getFileMap();
		CommonsMultipartFile cmf = (CommonsMultipartFile) files.get("img");
		// 경로
		String pdfPath = request.getSession().getServletContext().getRealPath("/resources");
		System.out.println("pdf : " + pdfPath);
		String savePath = ""+pdfPath+"/common/hyo/images/"+cmf.getOriginalFilename();
		System.out.println("저장 경로 : " +savePath);
		File file = new File(savePath);
		// 파일 업로드 처리 완료.
		cmf.transferTo(file);

//		String img = "alg.png";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("content", content);
		map.put("img", cmf.getOriginalFilename());
		
		service.insertRoom(map);
		
		ModelAndView mv = new ModelAndView("main");
		return mv;
	}
	
	@RequestMapping(value = "/readRoom")
	public ModelAndView readRoom(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		ModelAndView mv = new ModelAndView("updateform");
		String room_no = request.getParameter("room_no");
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		List<LinkedHashMap<String, Object>> list = new LinkedList<LinkedHashMap<String, Object>>();
		LinkedHashMap<String, Object> map = new LinkedHashMap<String, Object>();
		
		map.put("name", name);
		map.put("content", content);
		map.put("room_no", room_no);
		list.add(map);
		mv.addObject("detailRList", list);
		return mv;
	}
}
