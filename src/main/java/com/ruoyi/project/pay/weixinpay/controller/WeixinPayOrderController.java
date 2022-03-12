package com.ruoyi.project.pay.weixinpay.controller;

import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.pay.weixinpay.domain.WeixinOrder;
import com.ruoyi.project.pay.weixinpay.service.IWeixinOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payOrder")
public class WeixinPayOrderController extends BaseController {

    @Autowired
    private IWeixinOrderService weixinOrderService;

    @GetMapping()
    public AjaxResult getPayOrder(String orderNo) {
        WeixinOrder weixinOrder = weixinOrderService.selectWeixinOrderById(orderNo);
        if (weixinOrder == null) {
            return error();
        } else {
            if ("SUCCESS".equals(weixinOrder.getStatus())) {
                return AjaxResult.success("支付成功！", "SUCCESS");
            } else {
                return AjaxResult.success("支付成功！", "");
            }
        }
    }
}
