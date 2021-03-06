package com.ldt.vo;

public class Menu {

    private Integer menu_id;

    private String menu_name;

    private Integer menu_price;
    
    private String menu_img;
    
    private Integer menu_kcal;
    
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
	
	public String getMenu_img() {
		return menu_img;
	}
	
	public void setMenu_img(String menu_img) {
		this.menu_img = menu_img;
	}
	
	public Integer getMenu_kcal() {
		return menu_kcal;
	}
	
	public void setMenu_kcal(Integer menu_kcal) {
		this.menu_kcal = menu_kcal;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((menu_id == null) ? 0 : menu_id.hashCode());
		result = prime * result + ((menu_img == null) ? 0 : menu_img.hashCode());
		result = prime * result + ((menu_kcal == null) ? 0 : menu_kcal.hashCode());
		result = prime * result + ((menu_name == null) ? 0 : menu_name.hashCode());
		result = prime * result + ((menu_price == null) ? 0 : menu_price.hashCode());
		result = prime * result + ((this.result == null) ? 0 : this.result.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Menu other = (Menu) obj;
		if (menu_id == null) {
			if (other.menu_id != null)
				return false;
		} else if (!menu_id.equals(other.menu_id))
			return false;
		if (menu_img == null) {
			if (other.menu_img != null)
				return false;
		} else if (!menu_img.equals(other.menu_img))
			return false;
		if (menu_kcal == null) {
			if (other.menu_kcal != null)
				return false;
		} else if (!menu_kcal.equals(other.menu_kcal))
			return false;
		if (menu_name == null) {
			if (other.menu_name != null)
				return false;
		} else if (!menu_name.equals(other.menu_name))
			return false;
		if (menu_price == null) {
			if (other.menu_price != null)
				return false;
		} else if (!menu_price.equals(other.menu_price))
			return false;
		if (result == null) {
			if (other.result != null)
				return false;
		} else if (!result.equals(other.result))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Menu [menu_id=" + menu_id + ", menu_name=" + menu_name + ", menu_price=" + menu_price + ", menu_img="
				+ menu_img + ", menu_kcal=" + menu_kcal + ", result=" + result + "]";
	}

    
}