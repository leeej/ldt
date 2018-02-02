package com.ldt.vo;

public class User {

    private String user_id;

    private Kakao kakao;

    private String user_name;

    private String phone;

    private String car_number;

    private Integer l_point;
    
    private String result;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Kakao getKakao() {
		return kakao;
	}

	public void setKakao(Kakao kakao) {
		this.kakao = kakao;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCar_number() {
		return car_number;
	}

	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}

	public Integer getL_point() {
		return l_point;
	}

	public void setL_point(Integer l_point) {
		this.l_point = l_point;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", kakao=" + kakao + ", user_name=" + user_name + ", phone=" + phone
				+ ", car_number=" + car_number + ", l_point=" + l_point + ", result=" + result + "]";
	}

	

}