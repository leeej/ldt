package com.ldt.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@PostMapping
	public User findUser(@RequestBody User user, HttpServletRequest request, HttpServletResponse response) {
		User findUser = userDAO.selectByCarNumber(user.getCarNumber());
		return findUser;
	}
	

}
