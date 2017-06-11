package com.skuniv.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.project.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("UserDao")
public class UserDao extends abDAO {
	public List<Map<String, Object>> selectUserList(Map<String, Object> commandMap) {
		return (List<Map<String, Object>>) selectList("user.selectUserList", commandMap);
	}

	public void deleteUser(Map<String, Object> map) {
		delete("user.deleteUser", map);
	}
}