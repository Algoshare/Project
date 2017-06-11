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

import com.skuniv.project.service.CodeService;

@Controller
public class CodeController {
	@Resource(name = "CodeService")
	CodeService service;

		//questiondetail���������� q_no�� ����Ͽ� �������� list�� �������� �Լ�
		@RequestMapping(value = "/codeList")
		public ModelAndView codeList(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
			ModelAndView mv = new ModelAndView("jsonView");
			List<Map<String, Object>> list = service.selectCodeList(request.getParameter("q_no"));
			mv.addObject("codeList", list);
			return mv;
		}
		
		//code_no�� �̿��ؼ� ��۸���Ʈ�� �޾ƿ�
		@RequestMapping(value = "/commentList")
		public ModelAndView commentList(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
			ModelAndView mv = new ModelAndView("jsonView");
			List<Map<String, Object>> list = service.selectCommentList(request.getParameter("code_no"));
			mv.addObject("commentList", list);
			return mv;
		}
		
		//�ڵ� db�� �ֱ�
		@RequestMapping(value = "/insertCode")
		public ModelAndView insertCode(HttpServletRequest request) throws Exception {
			String c_name = request.getParameter("c_name");
			String c_content = request.getParameter("c_content");
			String q_no = request.getParameter("q_no");
			String givedate   = new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("c_name", c_name);
			map.put("c_content", c_content);
			map.put("givedate", givedate);
			map.put("q_no", q_no);

			service.insertCode(map);

			ModelAndView mv = new ModelAndView("jsonView");
			return mv;
		}
		
		//��� db�� �ֱ�
		@RequestMapping(value = "/insertComment")
		public ModelAndView insertComment(HttpServletRequest request) throws Exception {
			String comment_name = request.getParameter("comment_name");
			String comment = request.getParameter("comment");
			String code_no = request.getParameter("code_no");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("comment_name", comment_name);
			map.put("comment", comment);
			map.put("code_no", code_no);

			service.insertComment(map);

			ModelAndView mv = new ModelAndView("jsonView");
			return mv;
		}
		
		//�ڵ�list �� �ϳ��� Ŭ�������� codedetail���� ����ϴ� ��
		@RequestMapping(value = "/selectCertainCode")
		public ModelAndView selectCertainCode(HttpServletRequest request, Map<String, Object> commandMap)
				throws Exception {
			ModelAndView mv = new ModelAndView("codedetail");
			String code_no = request.getParameter("code_no");
			String c_name = request.getParameter("c_name");
			String c_content = request.getParameter("c_content");
			String givedate = request.getParameter("givedate");
			String q_no = request.getParameter("q_no");
			List<LinkedHashMap<String, Object>> list = new LinkedList<LinkedHashMap<String, Object>>();
			LinkedHashMap<String, Object> map = new LinkedHashMap<String, Object>();
			map.put("code_no", code_no);
			map.put("c_name", c_name);
			map.put("c_content", c_content);
			map.put("givedate", givedate);
			map.put("q_no", q_no);
			list.add(map);
			mv.addObject("detailCodeList", list);
			return mv;
		}
}
