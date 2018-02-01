package com.ldt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ldt.vo.User;

@Repository
public class UserDAO {

	@Autowired
	private SqlSession session;
	
	public User selectByCarNumber(String carNumber){
		return session.selectOne("UserMapper.selectByCarNumber", carNumber);
	}
	
	public List<User> selectAllUser(){
		return session.selectList("UserMapper.selectAllUser");
	}
	
	public void insert(User user){
		session.insert("UserMapper.insertUser", user);
	}
	
	public void update(User user){
		session.update("UserMapper.updateUser", user);
	}
	
	public void delete(int userSerial){
		session.delete("UserMapper.deleteUser", userSerial);
	}
}