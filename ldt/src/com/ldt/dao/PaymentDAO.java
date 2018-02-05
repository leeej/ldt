package com.ldt.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ldt.vo.Orderline;
import com.ldt.vo.Payment;

@Repository
public class PaymentDAO {

	@Autowired
	private SqlSession session;
	
	public List<Payment> selectAllPayment(){
		return session.selectList("PaymentMapper.selectAllPayment");
	}
	
	public Payment selectByCar_number(String car_number){
		return session.selectOne("PaymentMapper.selectByCar_number", car_number);
	}
	
	public Payment selectByPayment_id(int payment_id){
		return session.selectOne("PaymentMapper.selectByPayment_id", payment_id);
	}
	
	public void insert(Payment payment){
		session.insert("PaymentMapper.insertPayment", payment);
		for(Orderline line: payment.getOrderline()){
			session.insert("PaymentMapper.insertLine", line);
		}
	}
	
	public void update(int payment_id){
		session.update("PaymentMapper.updatePayment", payment_id);
	}
	
}