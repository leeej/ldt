package com.ldt.control;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.UserDAO;
import com.ldt.vo.User;

@RestController
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDAO userDAO;
	
	@GetMapping
	public User findUser(@RequestBody User user) {
		User findUser = userDAO.selectByCarNumber(user.getCarNumber());
		return findUser;
	}
	

}
