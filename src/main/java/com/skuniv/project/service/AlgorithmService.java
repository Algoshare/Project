package com.skuniv.project.service;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.skuniv.project.dao.AlgorithmDao;

@Service("AlgorithmService")
public class AlgorithmService {
	@Resource(name = "AlgorithmDao")
	private AlgorithmDao dao;
	public List<Map<String, Object>> selectAlgoList(String q_no) throws Exception {
		return decodeMap(dao.selectAlgoList(q_no));
	}
	public List<Map<String, Object>> decodeMap(List<Map<String, Object>> list) throws UnsupportedEncodingException {
		list.get(0).put("q_content", URLDecoder.decode(list.get(0).get("q_content").toString(), "UTF-8"));
		return list;
	}
}
