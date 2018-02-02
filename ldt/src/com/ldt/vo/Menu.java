package com.ldt.vo;

public class Menu {

    private Integer menu_id;

    private String menu_name;

    private Integer menu_price;
    
    private String result;

	public Integer getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(Integer menu_id) {
		this.menu_id = menu_id;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public Integer getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(Integer menu_price) {
		this.menu_price = menu_price;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "Menu [menu_id=" + menu_id + ", menu_name=" + menu_name + ", menu_price=" + menu_price + ", result="
				+ result + "]";
	}
    
    

}