package com.skuniv.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.project.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("AlgorithmDao")
public class AlgorithmDao extends abDAO {
	public List<Map<String, Object>> selectAlgoList(String q_no) {
		return (List<Map<String, Object>>) selectList("algorithm.selectAlgoList", q_no);
	}
}
