package com.ldt.vo;

public class Kakao {

    private String kakao_token;

    private String pre_input;

    private String cur_input;
    
    private String result;

	public String getKakao_token() {
		return kakao_token;
	}

	public void setKakao_token(String kakao_token) {
		this.kakao_token = kakao_token;
	}

	public String getPre_input() {
		return pre_input;
	}

	public void setPre_input(String pre_input) {
		this.pre_input = pre_input;
	}

	public String getCur_input() {
		return cur_input;
	}

	public void setCur_input(String cur_input) {
		this.cur_input = cur_input;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "Kakao [kakao_token=" + kakao_token + ", pre_input=" + pre_input + ", cur_input=" + cur_input
				+ ", result=" + result + "]";
	}

}