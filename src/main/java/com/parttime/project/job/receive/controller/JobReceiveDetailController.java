package com.parttime.project.job.receive.controller;

import com.parttime.framework.aspectj.lang.annotation.Log;
import com.parttime.framework.aspectj.lang.enums.BusinessType;
import com.parttime.framework.web.controller.BaseController;
import com.parttime.framework.web.domain.AjaxResult;
import com.parttime.framework.web.page.TableDataInfo;
import com.parttime.project.job.receive.domain.JobReceiveDetail;
import com.parttime.project.job.receive.service.IJobReceiveDetailService;
import com.parttime.project.job.receive.vo.DeliveryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 职位接受记录Controller
 * 
 * @author 。
 * @date 2020-02-05
 */
@Controller
@RequestMapping("/job/receive")
public class JobReceiveDetailController extends BaseController
{
    private String prefix = "job/receive";

    @Autowired
    private IJobReceiveDetailService jobReceiveDetailService;


    @GetMapping()
    public String receive()
    {
        return prefix + "/receive";
    }

    /**
     * 查询职位接受记录列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobReceiveDetail jobReceiveDetail)
    {
        startPage();
        List<JobReceiveDetail> list = jobReceiveDetailService.selectJobReceiveDetailList(jobReceiveDetail);
        return getDataTable(list);
    }


    /**
     * 新增职位接受记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存职位接受记录
     */
    @Log(title = "职位接受记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JobReceiveDetail jobReceiveDetail)
    {
        return toAjax(jobReceiveDetailService.insertJobReceiveDetail(jobReceiveDetail));
    }

    /**
     * 修改职位接受记录
     */
    @GetMapping("/edit/{receiveId}")
    public String edit(@PathVariable("receiveId") Long receiveId, ModelMap mmap)
    {
        JobReceiveDetail jobReceiveDetail = jobReceiveDetailService.selectJobReceiveDetailById(receiveId);
        mmap.put("jobReceiveDetail", jobReceiveDetail);
        return prefix + "/edit";
    }

    @GetMapping("/view/{positionId}")
    public String view(@PathVariable("positionId")Long positionId, ModelMap mmap)
    {

        DeliveryVO deliveryVO = jobReceiveDetailService.selectJobDelivery(positionId);
        mmap.put("deliveryVO", deliveryVO);
        return prefix + "/view";
    }

    /**
     * 修改保存职位接受记录
     */
    @Log(title = "职位接受记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JobReceiveDetail jobReceiveDetail)
    {
        return toAjax(jobReceiveDetailService.updateJobReceiveDetail(jobReceiveDetail));
    }

    /**
     * 删除职位接受记录
     */
    @Log(title = "职位接受记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jobReceiveDetailService.deleteJobReceiveDetailByIds(ids));
    }


    @Log(title = "修改投递状态")
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(JobReceiveDetail jobReceiveDetail)
    {
        return toAjax(jobReceiveDetailService.changeStatusById(jobReceiveDetail));
    }
}
