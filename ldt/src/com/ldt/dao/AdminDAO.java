package com.ldt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ldt.vo.Admin;

@Repository
public class AdminDAO{
	@Autowired
	private SqlSession session;
	
	public List<Admin> selectAll(){
		return session.selectList("AdminMapper.selectAllAdmin");
	}
	
	public Admin selectById(String adminId){
		return session.selectOne("AdminMapper.selectById", adminId);
	}
	
	public void insert(Admin admin){
		session.insert("AdminMapper.insertAdmin", admin);
	}	

	public void update(Admin admin){
		session.update("AdminMapper.updateAdmin", admin);
	}
}
