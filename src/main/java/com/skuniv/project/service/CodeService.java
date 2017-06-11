package com.skuniv.project.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.skuniv.project.dao.CodeDao;

@Service("CodeService")
public class CodeService {
	@Resource(name = "CodeDao")
	private CodeDao dao;

	public List<Map<String, Object>> selectCodeList(String q_no) throws Exception {
		return dao.selectCodeList(q_no);
	}
	public List<Map<String, Object>> selectCommentList(String code_no) throws Exception {
		return dao.selectCommentList(code_no);
	}
	public void insertCode(Map<String, Object> map) {
		String c_content = map.get("c_content").toString();
		c_content = c_content.replaceAll(" ", "&nbsp;");
		c_content = c_content.replaceAll("\t", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		c_content = c_content.replaceAll("'", "\\\\'");
		try {
			c_content = URLEncoder.encode(c_content, "UTF-8");
		}catch (UnsupportedEncodingException u) {
			u.printStackTrace();
		}
		map.put("c_content", c_content);
		dao.insertCode(map);
	}
	public void insertComment(Map<String, Object> map) {
		dao.insertComment(map);
	}
}
