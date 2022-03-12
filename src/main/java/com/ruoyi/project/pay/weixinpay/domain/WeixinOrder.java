package com.ruoyi.project.pay.weixinpay.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 微信支付订单对象 weixin_order
 *
 * @author 。
 * @date 2020-02-07
 */
public class WeixinOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单号 */
    private String orderNo;

    /** 用户id */
    @Excel(name = "用户id")
    private Long userId;

    /** 金额(单位分) */
    @Excel(name = "金额(单位分)")
    private Integer amount;

    /** 支付状态 */
    @Excel(name = "支付状态")
    private String status;

    /** 支付时间 */
    @Excel(name = "支付时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date payTime;

    private String describe;

    public void setOrderNo(String orderNo)
    {
        this.orderNo = orderNo;
    }

    public String getOrderNo()
    {
        return orderNo;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setAmount(Integer amount)
    {
        this.amount = amount;
    }

    public Integer getAmount()
    {
        return amount;
    }
    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getStatus()
    {
        return status;
    }
    public void setPayTime(Date payTime)
    {
        this.payTime = payTime;
    }

    public Date getPayTime()
    {
        return payTime;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("orderNo", getOrderNo())
                .append("userId", getUserId())
                .append("amount", getAmount())
                .append("status", getStatus())
                .append("payTime", getPayTime())
                .toString();
    }
}