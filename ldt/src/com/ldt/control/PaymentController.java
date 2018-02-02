package com.ldt.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.MenuDAO;
import com.ldt.dao.PaymentDAO;
import com.ldt.dao.UserDAO;
import com.ldt.vo.Menu;
import com.ldt.vo.Orderline;
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
		List<Menu> menus = menuDAO.selectAllMenu(); 
		String forwardURL = "/order.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(forwardURL);
		HttpSession session = request.getSession();
		User user = userDAO.selectByCarNumber(car_number);
		session.setAttribute("user", user);
		request.setAttribute("menus", menus);
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("/addCart")
	public void addCart(HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		HashMap<Menu, Integer> cart = (HashMap)session.getAttribute("cart");
		int menu_id = Integer.parseInt(request.getParameter("menu_id"));
		Menu menu = menuDAO.selectByMenu_id(menu_id);
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		if(cart == null){
			cart = new HashMap<Menu, Integer>();
			session.setAttribute("cart", cart);
		}
		Integer inCartQuantity = cart.get(menu);
		if(inCartQuantity != null)
			quantity += inCartQuantity;
		cart.put(menu, quantity);
	}
	
	@PostMapping("/addPayment")
	public Payment addPayment(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Payment payment = new Payment();
		User user = (User) session.getAttribute("user");
		HashMap<Menu, Integer> cart = (HashMap)session.getAttribute("cart");
		List<Menu> menus = menuDAO.selectAllMenu();
		List<Orderline> orderlines = new ArrayList<>();
		for(Menu menu:menus){
			if(cart.get(menu) != null){
				Orderline orderline = new Orderline();
				orderline.setMenu(menu);
				orderline.setQuantity(cart.get(menu));
				orderlines.add(orderline);
			}
		}
		payment.setUser(user);
		payment.setOrderline(orderlines);
		paymentDAO.insert(payment);
		payment.setResult("1");
		session.removeAttribute("cart");
		session.removeAttribute("uesr");
		return payment;
	}
}
