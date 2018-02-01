package com.ldt.vo;

public class User {

    private Integer userSerial;

    private String userName;

    private String phone1;

    private String phone2;

    private String carNumber;

    private Integer lPoint;

    public Integer getUserSerial() {
        return userSerial;
    }

    public void setUserSerial(Integer userSerial) {
        this.userSerial = userSerial;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public Integer getLPoint() {
        return lPoint;
    }

    public void setLPoint(Integer lPoint) {
        this.lPoint = lPoint;
    }

    // User 모델 복사
    public void CopyData(User param)
    {
        this.userSerial = param.getUserSerial();
        this.userName = param.getUserName();
        this.phone1 = param.getPhone1();
        this.phone2 = param.getPhone2();
        this.carNumber = param.getCarNumber();
        this.lPoint = param.getLPoint();
    }
}