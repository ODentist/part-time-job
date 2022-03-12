package com.ruoyi.project.pay.weixinpay.mapper;

import com.ruoyi.project.pay.weixinpay.domain.WeixinOrder;
import java.util.List;

/**
 * 微信支付订单Mapper接口
 *
 * @author 。
 * @date 2020-02-07
 */
public interface WeixinOrderMapper
{
    /**
     * 查询微信支付订单
     *
     * @param orderNo 微信支付订单ID
     * @return 微信支付订单
     */
    public WeixinOrder selectWeixinOrderById(String orderNo);

    /**
     * 查询微信支付订单列表
     *
     * @param weixinOrder 微信支付订单
     * @return 微信支付订单集合
     */
    public List<WeixinOrder> selectWeixinOrderList(WeixinOrder weixinOrder);

    /**
     * 新增微信支付订单
     *
     * @param weixinOrder 微信支付订单
     * @return 结果
     */
    public int insertWeixinOrder(WeixinOrder weixinOrder);


    /**
     * 更新微信支付订单
     *
     * @param weixinOrder 微信支付订单
     * @return 结果
     */
    public int updateWeixinOrder(WeixinOrder weixinOrder);

}