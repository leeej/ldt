package com.ldt.vo;

public class Admin {

    private String adminId;

    private String password;
    
    private Integer result;

    public Integer getResult() {
		return result;
	}

	public void setResult(Integer result) {
		this.result = result;
	}

	public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Admin 모델 복사
    public void CopyData(Admin param)
    {
        this.adminId = param.getAdminId();
        this.password = param.getPassword();
    }
}