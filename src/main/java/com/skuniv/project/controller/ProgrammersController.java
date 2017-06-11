package com.skuniv.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProgrammersController {

	
	@RequestMapping(value = "/programmers", method=RequestMethod.GET)
	public ModelAndView displayProgrammers(HttpServletRequest request) throws Exception {
		String q_no = request.getParameter("q_no");
		ModelAndView mv = new ModelAndView("programmers");
		mv.addObject("q_no", q_no);
		return mv;
	}
}
