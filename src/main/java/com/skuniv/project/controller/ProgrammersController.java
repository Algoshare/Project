package com.skuniv.project.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skuniv.project.service.AlgorithmService;

@Controller
public class ProgrammersController {
	@Resource(name = "AlgorithmService")
	AlgorithmService service;
	
	@RequestMapping(value = "/programmers", method=RequestMethod.GET)
	public ModelAndView displayProgrammers(HttpServletRequest request) throws Exception {
		String q_no = request.getParameter("q_no");
		ModelAndView mv = new ModelAndView("programmers");
		List<Map<String, Object>> list = service.selectAlgoList(q_no);
		mv.addObject("algo_list", list);
		return mv;
	}
}
