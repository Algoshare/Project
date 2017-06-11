package com.skuniv.project.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.skuniv.project.dao.DetailDao;

@Service("DetailService")
public class DetailService {
	@Resource(name = "DetailDao")
	private DetailDao dao;
	
	public List<Map<String, Object>> selectQuestionList(String room_no) throws Exception {
		return dao.selectQuestionList(room_no);
	}
	public void insertQuestion(Map<String, Object> map) {
		dao.insertQuestion(map);
	}
	public void deleteQuestion(Map<String, Object> map) {
		dao.deleteQuestion(map);
	}
	public void updateQuestion(Map<String, Object> map) {
		dao.updateQuestion(map);
	}
}
