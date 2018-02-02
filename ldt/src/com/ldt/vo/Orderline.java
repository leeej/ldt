package com.ldt.vo;

public class Orderline {

    private Integer order_id;

    private Menu menu;

    private Integer quantity;
    
    private String result;

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_no(Integer order_id) {
		this.order_id = order_id;
	}

	public Menu getMenu() {
		return menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "Orderline [order_id=" + order_id + ", menu=" + menu + ", quantity=" + quantity + ", result=" + result
				+ "]";
	}

}