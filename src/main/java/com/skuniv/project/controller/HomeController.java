package com.skuniv.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "main";
	}
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "socket";
	}
	
	@RequestMapping(value = "/code", method = RequestMethod.GET)
	public String baekjoon(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "code";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainDisplay(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "main";
	}
	
	@RequestMapping(value = "/updateform", method = RequestMethod.GET)
	public String updateform(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "updateform";
	}
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String form(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "form";
	}
	@RequestMapping(value = "/questionupdateform", method = RequestMethod.GET)
	public String questionupdateform(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "questionupdateform";
	}
	@RequestMapping(value = "/questionform", method = RequestMethod.GET)
	public String questionform(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "questionform";
	}
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(Locale locale, Model model) {
		// 占쏙옙占쏙옙占� jsp
		return "detail";
	}
}
