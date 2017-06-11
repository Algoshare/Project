package com.skuniv.project.service;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
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
		List<Map<String, Object>> list = dao.selectQuestionList(room_no);
		if (list.size() == 0) return list;
		String q_content = list.get(0).get("q_content").toString();
		q_content = q_content.replaceAll("%5C", "");
		list.get(0).put("q_content", q_content);
		
		for (int i = 0 ; i < list.size(); i++) {
			String q_name = list.get(i).get("q_name").toString();
			q_name = URLDecoder.decode(q_name, "UTF-8");
			list.get(i).put("q_name", q_name);
			q_content = list.get(i).get("q_content").toString();
			q_content = URLDecoder.decode(q_content, "UTF-8");
			list.get(i).put("q_content", q_content);
			String input = list.get(i).get("input").toString();
			input = URLDecoder.decode(input, "UTF-8");
			list.get(i).put("input", input);
			String output = list.get(i).get("output").toString();
			output = URLDecoder.decode(output, "UTF-8");
			list.get(i).put("output", output);
			String due = list.get(i).get("due").toString();
			due = URLDecoder.decode(due, "UTF-8");
			list.get(i).put("due", due);
			String q_no = list.get(i).get("q_no").toString();
			q_no = URLDecoder.decode(q_no, "UTF-8");
			list.get(i).put("q_no", q_no);
			room_no = list.get(i).get("room_no").toString();
			room_no = URLDecoder.decode(room_no, "UTF-8");
			list.get(i).put("room_no", room_no);
		}
		return list;
	}
	public void insertQuestion(Map<String, Object> map) {
		String q_content = map.get("q_content").toString();
		q_content = q_content.replaceAll(" ", "&nbsp;");
		q_content = q_content.replaceAll("\t", "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		q_content = q_content.replaceAll("'", "\\\\'");
		try {
			q_content = URLEncoder.encode(q_content, "UTF-8");
		}catch (UnsupportedEncodingException u) {
			u.printStackTrace();
		}
		System.out.println("q : " + q_content);
		map.put("q_content", q_content);
		dao.insertQuestion(map);
	}
	public void deleteQuestion(Map<String, Object> map) {
		dao.deleteQuestion(map);
	}
	public void updateQuestion(Map<String, Object> map) {
		dao.updateQuestion(map);
	}
}
