package com.ldt.vo;

public class Admin {

    private String admin_id;

    private String password;
    
    private Integer result;

    public Integer getResult() {
		return result;
	}

	public void setResult(Integer result) {
		this.result = result;
	}

	public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
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
        this.admin_id = param.getAdmin_id();
        this.password = param.getPassword();
    }

	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", password=" + password + ", result=" + result + "]";
	}
    
}