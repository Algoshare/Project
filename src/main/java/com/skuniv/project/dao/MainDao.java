package com.skuniv.project.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.skuniv.project.abst.dao.abDAO;

@SuppressWarnings("unchecked")
@Repository("MainDao")
public class MainDao extends abDAO{
	public List<Map<String, Object>> selectRoomList() {
		return (List<Map<String, Object>>) selectList("main.selectRoomList");
	}
	public void insertRoom(Map<String, Object> map) {
		insert("main.insertRoom", map);
	}
	public void deleteRoom(Map<String, Object> map) {
		insert("main.deleteRoom", map);
	}

	public void updateRoom(Map<String, Object> map) {
		insert("main.updateRoom", map);
	}
}
