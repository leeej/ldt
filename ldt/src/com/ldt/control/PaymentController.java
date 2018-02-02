package com.ldt.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.MenuDAO;
import com.ldt.dao.PaymentDAO;
import com.ldt.dao.UserDAO;
import com.ldt.vo.Menu;
import com.ldt.vo.Payment;
import com.ldt.vo.User;

@RestController
public class PaymentController {
	@Autowired
	private PaymentDAO paymentDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private MenuDAO menuDAO;
	
	@GetMapping("/")
	public void goIndex(@RequestParam("car_number") String car_number, HttpServletRequest request, HttpServletResponse response){
		User user = userDAO.selectByCarNumber(car_number);
		List<Menu> menus = menuDAO.selectAllMenu(); 
		String forwardURL = "/order.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		request.setAttribute("user", user);
		request.setAttribute("menus", menus);
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@PostMapping("/add")
	public Payment addPayment(@RequestBody Payment payment) {
		paymentDAO.insert(payment);
		payment.setResult("1");
		return payment;
	}
}
