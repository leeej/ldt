package com.ldt.vo;

import java.sql.Timestamp;
import java.util.List;

public class Payment {

    private Integer payment_id;

    private User user;
    
    private List<Orderline> orderline;
    
    private Integer total_price;

    private Timestamp date;
    
    private String is_paid;
    
    private String result;

	public Integer getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(Integer payment_id) {
		this.payment_id = payment_id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Orderline> getOrderline() {
		return orderline;
	}

	public void setOrderline(List<Orderline> orderline) {
		this.orderline = orderline;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getIs_paid() {
		return is_paid;
	}

	public void setIs_paid(String is_paid) {
		this.is_paid = is_paid;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public Integer getTotal_price() {
		return total_price;
	}
	
	public void setTotal_price(Integer total_price) {
		this.total_price = total_price;
	}

	@Override
	public String toString() {
		return "Payment [payment_id=" + payment_id + ", user=" + user + ", orderline=" + orderline + ", total_price="
				+ total_price + ", date=" + date + ", is_paid=" + is_paid + ", result=" + result + "]";
	}

	
}