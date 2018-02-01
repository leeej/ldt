package com.ldt.vo;

import java.sql.Timestamp;

public class Payment {

    private Integer paymentId;

    private Integer userSerial;

    private Integer price;

    private String location;

    private Timestamp date;

    public Integer getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Integer paymentId) {
        this.paymentId = paymentId;
    }

    public Integer getUserSerial() {
        return userSerial;
    }

    public void setUserSerial(Integer userSerial) {
        this.userSerial = userSerial;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    // Payment 모델 복사
    public void CopyData(Payment param)
    {
        this.paymentId = param.getPaymentId();
        this.userSerial = param.getUserSerial();
        this.price = param.getPrice();
        this.location = param.getLocation();
        this.date = param.getDate();
    }
}