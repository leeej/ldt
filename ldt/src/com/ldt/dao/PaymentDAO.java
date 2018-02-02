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
	
	public void insert(Payment payment){
		session.insert("PaymentMapper.insertPayment", payment);
		for(Orderline line: payment.getOrderline()){
			session.insert("PaymentMapper.insertLine", line);
		}
	}
	
}