package com.ruoyi.project.pay.weixinpay.service.impl;

import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.pay.common.model.Product;
import com.ruoyi.project.pay.weixinpay.domain.WeixinOrder;
import com.ruoyi.project.pay.weixinpay.mapper.WeixinOrderMapper;
import com.ruoyi.project.pay.weixinpay.service.IWeixinOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeixinOrderServiceImpl implements IWeixinOrderService {

    @Autowired
    private WeixinOrderMapper weixinOrderMapper;

    @Override
    public WeixinOrder selectWeixinOrderById(String orderNo) {
        return weixinOrderMapper.selectWeixinOrderById(orderNo);
    }

    @Override
    public int insertWeixinOrder(Product product) {
        WeixinOrder weixinOrder = new WeixinOrder();
        weixinOrder.setUserId(ShiroUtils.getUserId());
        weixinOrder.setOrderNo(product.getOutTradeNo());
        weixinOrder.setAmount(Integer.valueOf(product.getTotalFee()));
        weixinOrder.setDescribe(product.getBody());
        return weixinOrderMapper.insertWeixinOrder(weixinOrder);
    }

    @Override
    public int updateWeixinOrder(WeixinOrder weixinOrder) {
        return weixinOrderMapper.updateWeixinOrder(weixinOrder);
    }
}
