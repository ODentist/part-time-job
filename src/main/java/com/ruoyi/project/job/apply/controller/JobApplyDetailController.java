package com.ruoyi.project.job.apply.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.job.apply.domain.JobApplyDetail;
import com.ruoyi.project.job.apply.service.IJobApplyDetailService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 职位申请记录Controller
 * 
 * @author .
 * @date 2020-02-05
 */
@Controller
@RequestMapping("/job/apply")
public class JobApplyDetailController extends BaseController
{
    private String prefix = "job/apply";

    @Autowired
    private IJobApplyDetailService jobApplyDetailService;

    @GetMapping()
    public String apply()
    {
        return prefix + "/apply";
    }

    /**
     * 查询职位申请记录列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobApplyDetail jobApplyDetail)
    {
        startPage();
        List<JobApplyDetail> list = jobApplyDetailService.selectJobApplyDetailList(jobApplyDetail);
        return getDataTable(list);
    }

    /**
     * 新增职位申请记录
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存职位申请记录
     */
    @Log(title = "职位申请记录", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JobApplyDetail jobApplyDetail)
    {
        return toAjax(jobApplyDetailService.insertJobApplyDetail(jobApplyDetail));
    }

    /**
     * 修改职位申请记录
     */
    @GetMapping("/edit/{applyId}")
    public String edit(@PathVariable("applyId") Long applyId, ModelMap mmap)
    {
        JobApplyDetail jobApplyDetail = jobApplyDetailService.selectJobApplyDetailById(applyId);
        mmap.put("jobApplyDetail", jobApplyDetail);
        return prefix + "/edit";
    }

    /**
     * 查看职位申请记录
     */
    @GetMapping("/view/{positionId}")
    public String view(@PathVariable("positionId")Long positionId, ModelMap mmap)
    {
        JobApplyDetail jobApplyDetail = jobApplyDetailService.selectJobApplyDetail(positionId);
        mmap.put("jobApplyDetail", jobApplyDetail);
        return prefix + "/edit";
    }

    /**
     * 修改保存职位申请记录
     */
    @Log(title = "职位申请记录", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JobApplyDetail jobApplyDetail)
    {
        return toAjax(jobApplyDetailService.updateJobApplyDetail(jobApplyDetail));
    }

    /**
     * 删除职位申请记录
     */
    @Log(title = "职位申请记录", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jobApplyDetailService.deleteJobApplyDetailByIds(ids));
    }
}
