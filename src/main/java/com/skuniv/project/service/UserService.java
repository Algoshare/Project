package com.skuniv.project.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.skuniv.project.dao.UserDao;

@Service("UserService")
public class UserService {
	@Resource(name = "UserDao")
	private UserDao dao;

	public Object good() {
		// TODO Auto-generated method stub
		return "hyo";
	}

	public List<Map<String, Object>> selectUserList(Map<String, Object> Map) throws Exception {
		return dao.selectUserList(Map);
	}

	public void deleteUser(Map<String, Object> map) {
		dao.deleteUser(map);
	}
}
