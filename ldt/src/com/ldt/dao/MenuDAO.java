package com.ldt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ldt.vo.Menu;

@Repository
public class MenuDAO {

	@Autowired
	private SqlSession session;
	
	public List<Menu> selectAllMenu(){
		return session.selectList("MenuMapper.selectAllMenu");
	}

	public Menu selectByMenu_id(int menu_id) {
		return session.selectOne("MenuMapper.selectByMenu_id", menu_id);
	}
}