package com.ruoyi.project.pay.event;

public class WeixinEvent {


    public WeixinEvent(String orderNo, String status, String totalFee) {
        this.orderNo = orderNo;
        this.status = status;
        this.totalFee = totalFee;
    }

    /**
     * 订单号
     */
    private String orderNo;

    /**
     * 支付状态(SUCCESS,FAIL)
     */
    private String status;

    /**
     * 支付状态(SUCCESS,FAIL)
     */
    private String totalFee;


    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(String totalFee) {
        this.totalFee = totalFee;
    }
}
