package com.skuniv.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.project.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("DetailDao")
public class DetailDao extends abDAO{
	public List<Map<String, Object>> selectQuestionList(String room_no) {
		return (List<Map<String, Object>>) selectList("detail.selectQuestionList", room_no);
	}
	public void insertQuestion(Map<String, Object> map) {
		insert("detail.insertQuestion", map);
	}
	public void deleteQuestion(Map<String, Object> map) {
		insert("detail.deleteQuestion", map);
	}
	public void updateQuestion(Map<String, Object> map) {
		insert("detail.updateQuestion", map);
	}
}
