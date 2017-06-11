package com.skuniv.project.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.skuniv.project.dao.MainDao;

@Service("MainService")
public class MainService {
	@Resource(name = "MainDao")
	private MainDao dao;
	public Object good() {
		// TODO Auto-generated method stub
		return "hyo";
	}
	
	public List<Map<String, Object>> selectRoomList() throws Exception {
		return dao.selectRoomList();
	}
	
	public void insertRoom(Map<String, Object> map) {
		dao.insertRoom(map);
	}
	public void deleteRoom(Map<String, Object> map) {
		dao.deleteRoom(map);
	}
	public void updateRoom(Map<String, Object> map) {
		dao.updateRoom(map);
	}
}
