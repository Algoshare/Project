package com.skuniv.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.project.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("CodeDao")
public class CodeDao extends abDAO {
	public List<Map<String, Object>> selectCodeList(String q_no) {
		return (List<Map<String, Object>>) selectList("code.selectCodeList", q_no);
	}
	public List<Map<String, Object>> selectCommentList(String code_no) {
		return (List<Map<String, Object>>) selectList("code.selectCommentList", code_no);
	}
	public void insertCode(Map<String, Object> map) {
		insert("code.insertCode", map);
	}
	public void insertComment(Map<String, Object> map) {
		insert("code.insertComment", map);
	}
	
}
