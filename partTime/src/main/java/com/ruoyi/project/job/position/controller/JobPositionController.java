package com.ruoyi.project.job.position.controller;

import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.job.enterprise.domain.JobEnterprise;
import com.ruoyi.project.job.enterprise.service.IJobEnterpriseService;
import com.ruoyi.project.job.position.domain.JobPosition;
import com.ruoyi.project.job.position.service.IJobPositionService;
import com.ruoyi.project.job.position.vo.DeliveryDetailVO;
import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import com.ruoyi.project.job.receive.service.IJobReceiveDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 职位Controller
 * 
 * @author .
 * @date 2020-02-05
 */
@Controller
@RequestMapping("/job/position")
public class JobPositionController extends BaseController
{
    private String prefix = "job/position";

    @Autowired
    private IJobPositionService jobPositionService;
    @Autowired
    private IJobReceiveDetailService jobReceiveDetailService;
    @Autowired
    private IJobEnterpriseService jobEnterpriseService;

    @GetMapping()
    public String position()
    {
        return prefix + "/position";
    }

    /**
     * 查询职位列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobPosition jobPosition)
    {
        startPage();
        if (!ShiroUtils.getSysUser().isAdmin()) {
            jobPosition.setUserId(ShiroUtils.getUserId());
        }
        List<JobPosition> list = jobPositionService.selectJobPositionList(jobPosition);
        return getDataTable(list);
    }

    /**
     * 新增职位
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存职位
     */
    @Log(title = "职位", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JobPosition jobPosition)
    {
        JobEnterprise enterprise = new JobEnterprise();
        enterprise.setUserId(ShiroUtils.getUserId());

        List<JobEnterprise> enterpriseList = jobEnterpriseService.selectJobEnterpriseList(enterprise);
        if (enterpriseList.size() == 0) {
            return error("请先创建企业后再添加职位！");
        }
        return toAjax(jobPositionService.insertJobPosition(jobPosition));
    }

    /**
     * 修改职位
     */
    @GetMapping("/edit/{positionId}")
    public String edit(@PathVariable("positionId") Long positionId, ModelMap mmap)
    {
        JobPosition jobPosition = jobPositionService.selectJobPositionById(positionId);
        mmap.put("jobPosition", jobPosition);
        return prefix + "/edit";
    }

    /**
     * 修改保存职位
     */
    @Log(title = "职位", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JobPosition jobPosition)
    {
        return toAjax(jobPositionService.updateJobPosition(jobPosition));
    }

    /**
     * 删除职位
     */
    @Log(title = "职位", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jobPositionService.deleteJobPositionByIds(ids));
    }

    /**
     * 发布职位
     */
    @Log(title = "发布职位")
    @PostMapping("/enable")
    @ResponseBody
    public AjaxResult enable(Long positionId, Integer status)
    {
        return toAjax(jobPositionService.enableJobPositionById(positionId, status));
    }


    @GetMapping("/deliveryDetail/{positionId}")
    public String deliveryDetail(@PathVariable("positionId") String positionId, ModelMap mmap)
    {
        mmap.put("positionId", positionId);
        return prefix + "/delivery_list";
    }

    /**
     * 查询职位列表
     */
    @PostMapping("/deliveryList")
    @ResponseBody
    public TableDataInfo deliveryList(DeliveryDetailVO deliveryDetailVO)
    {
        startPage();

        List<DeliveryDetailVO> list = jobPositionService.selectJobPositionResumeList(deliveryDetailVO);
        return getDataTable(list);
    }


    @GetMapping("/operating/{receiveId}/{resumeId}")
    public String operating(@PathVariable("receiveId") Long receiveId, @PathVariable("resumeId") Long resumeId,  ModelMap mmap)
    {

        mmap.put("operationVO", jobPositionService.selectOperating(receiveId, resumeId));
        return prefix + "/operating";
    }


    @GetMapping("/refuseReason/{receiveId}")
    public String refuseReason(@PathVariable("receiveId") Long receiveId , ModelMap mmap)
    {
        JobReceiveDetail jobReceiveDetail = jobReceiveDetailService.selectJobReceiveDetailById(receiveId);
        jobReceiveDetail.setOperateResult(1);
        mmap.put("jobReceiveDetail", jobReceiveDetail);
        return prefix + "/refuse";
    }
}
