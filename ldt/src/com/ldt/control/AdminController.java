package com.ldt.control;

import java.io.IOException;
import java.util.List;

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
import com.ldt.dao.PaymentDAO;
import com.ldt.vo.Admin;
import com.ldt.vo.Orderline;
import com.ldt.vo.Payment;

@RestController
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminDAO adminDAO;
	@Autowired
	private PaymentDAO paymentDAO;
	
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
	public Admin login(@RequestBody Admin admin, HttpServletRequest request, HttpServletResponse response) {
		Admin selectedAdmin = adminDAO.selectById(admin.getAdmin_id());
		admin.setResult(0);
		if(admin.getPassword().equals(selectedAdmin.getPassword())){
			admin.setResult(1);
			HttpSession session = request.getSession();
			session.setAttribute("loginInfo", admin);
			session.setMaxInactiveInterval(10000);
		}
		return admin;
	}
	
	@GetMapping("/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			session.removeAttribute("loginInfo");
			String forwardURL = "/admin";
			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@GetMapping("/paymentList")
	public void findAllPayment(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String forwardURL = "/admin";
		if(session.getAttribute("loginInfo") != null){
			forwardURL = "/admin/index.jsp";
			List<Payment> allPayment = paymentDAO.selectAllPayment();
			for(Payment payment: allPayment){
				int total_price = 0;
				for(Orderline orderline: payment.getOrderline()){
					int price = orderline.getMenu().getMenu_price(); 
					int quantity = orderline.getQuantity();
					total_price += price*quantity;
				}
				payment.setTotal_price(total_price);
			}
			request.setAttribute("allPayment", allPayment);
		}
		try {			
			RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
