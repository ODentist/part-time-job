package com.ruoyi.project.pay.weixinpay.service;

import com.ruoyi.project.pay.common.model.Product;
import com.ruoyi.project.pay.weixinpay.domain.WeixinOrder;

public interface IWeixinOrderService {

    /**
     *
     * @param orderNo
     * @return
     */
    public WeixinOrder selectWeixinOrderById(String orderNo);

    /**
     * 生成微信订单
     * @param product
     * @return
     */
    public int insertWeixinOrder(Product product);

    /**
     * 更新微信订单
     * @param weixinOrder
     * @return
     */
    public int updateWeixinOrder(WeixinOrder weixinOrder);
}
