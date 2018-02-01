package com.ldt.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ldt.dao.PaymentDAO;
import com.ldt.vo.Payment;

@RestController
@RequestMapping("/payment")
public class PaymentController {
	@Autowired
	private PaymentDAO paymentDAO;

	@GetMapping
	public List<Payment> findAllPayment(@RequestBody Payment payment) {
		List<Payment> allPayment = paymentDAO.selectAllPayment();
		return allPayment;
	}

	@PostMapping("/add")
	public Payment addPayment(@RequestBody Payment payment) {
		paymentDAO.insert(payment);
		int paymentId = paymentDAO.selectMaxPaymentId();
		payment.setPaymentId(paymentId);
		Payment addedPayment = paymentDAO.selectByPaymentId(payment.getPaymentId());
		addedPayment.setResult(0);
		if (addedPayment.getUserSerial().equals(payment.getUserSerial())
				&& addedPayment.getDate().equals(payment.getDate()))
			addedPayment.setResult(1);
		return addedPayment;
	}

	@PostMapping("/delete")
	public Payment deletePayment(@RequestParam("chkList") Integer[] chkList) {
		Payment payment = new Payment();
		payment.setResult(1);
		for (int i = 0; i < chkList.length; i++) {
			int paymentId = chkList[i];
			paymentDAO.delete(paymentId);
			if(paymentDAO.selectByPaymentId(paymentId) != null){
				payment.setResult(0);
				return payment;
			}
		}
		return payment;
	}

}
