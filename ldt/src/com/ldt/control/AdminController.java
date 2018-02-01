package com.ldt.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.AdminDAO;
import com.ldt.vo.Admin;

@RestController
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminDAO adminDAO;
	
	@GetMapping
	public void goLogin(HttpServletRequest request, HttpServletResponse response) {
		String forwardURL = "/admin/login.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@PostMapping("/login")
	public Admin login(@RequestBody Admin admin, HttpSession session) {
		Admin selectedAdmin = adminDAO.selectById(admin.getAdminId());
		admin.setResult(0);
		if(admin.getPassword().equals(selectedAdmin.getPassword())){
			admin.setResult(1);
			session.setAttribute("loginInfo", admin);
			session.setMaxInactiveInterval(10000);
		}
		return admin;
	}
	
	@GetMapping("/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		try {
			session.removeAttribute("loginInfo");
			String forwardURL = "/admin/admin.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
