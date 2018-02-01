package com.ldt.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.PaymentDAO;
import com.ldt.vo.Payment;

@RestController
@RequestMapping("/payment")
public class PaymentController {
	@Autowired
	private PaymentDAO paymentDAO;
	
	@PostMapping
	public List<Payment> findAllPayment(@RequestBody Payment payment) {
		List<Payment> allPayment = paymentDAO.selectAllPayment();
		return allPayment;
	}
	
	@PostMapping
	public int addPayment(@RequestBody Payment payment) {
		paymentDAO.insert(payment);
		return 0;
	}

}
