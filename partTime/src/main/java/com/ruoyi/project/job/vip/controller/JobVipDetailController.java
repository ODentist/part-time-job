package com.ruoyi.project.job.vip.controller;

import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.job.vip.domain.JobVipDetail;
import com.ruoyi.project.job.vip.service.IJobVipDetailService;
//import com.ruoyi.project.pay.event.WeixinEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户开通vip记录Controller
 * 
 * @author .
 * @date 2020-02-07
 */
@Controller
@RequestMapping("/job/vip")
public class JobVipDetailController extends BaseController
{
    private String prefix = "job/vip";

    @Autowired
    private IJobVipDetailService jobVipDetailService;


    @GetMapping()
    public String vip()
    {
        return prefix + "/vip";
    }

    /**
     * 查询用户开通vip记录列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobVipDetail jobVipDetail)
    {
        startPage();
        List<JobVipDetail> list = jobVipDetailService.selectJobVipDetailList(jobVipDetail);
        return getDataTable(list);
    }

    /**
     * 用户开通vip记录
     */
    @Log(title = "用户开通vip记录", businessType = BusinessType.DELETE)
    @PostMapping( "/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(Long userId, Integer status)
    {

        return toAjax(jobVipDetailService.updateJobVipDetail(userId, status));
    }

    @GetMapping("/toVip")
    public String toVip()
    {
        return prefix + "/toVip";
    }

    /**
     * 用户开通vip记录
     */
    @Log(title = "用户开通vip记录", businessType = BusinessType.DELETE)
    @PostMapping( "/toBeVip")
    @ResponseBody
    public AjaxResult toBeVip(Long userId, Integer status)
    {

        return toAjax(jobVipDetailService.updateJobVipDetail(userId, status));
    }

    @Autowired
    private ApplicationContext context;


//    @GetMapping("/updateOrder")
//    @ResponseBody
//    public AjaxResult updateOrder(String orderNo, String totalFee){
//        context.publishEvent(new WeixinEvent(orderNo, "SUCCESS", totalFee));
//        return success();
//    }

}
