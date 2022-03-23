package com.parttime.project.job.enterprise.controller;

import java.util.List;

import com.parttime.common.utils.security.ShiroUtils;
import com.parttime.project.job.resume.domain.JobResume;
import com.parttime.project.job.resume.service.IJobResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.parttime.framework.aspectj.lang.annotation.Log;
import com.parttime.framework.aspectj.lang.enums.BusinessType;
import com.parttime.project.job.enterprise.domain.JobEnterprise;
import com.parttime.project.job.enterprise.service.IJobEnterpriseService;
import com.parttime.framework.web.controller.BaseController;
import com.parttime.framework.web.domain.AjaxResult;
import com.parttime.common.utils.poi.ExcelUtil;
import com.parttime.framework.web.page.TableDataInfo;

/**
 * 企业Controller
 * 
 * @author .
 * @date 2020-02-10
 */
@Controller
@RequestMapping("/job/enterprise")
public class JobEnterpriseController extends BaseController
{
    private String prefix = "job/enterprise";

    @Autowired
    private IJobEnterpriseService jobEnterpriseService;
    @Autowired
    private IJobResumeService jobResumeService;

    @GetMapping()
    public String enterprise()
    {
        return prefix + "/enterprise";
    }

    /**
     * 查询企业列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobEnterprise jobEnterprise)
    {
        startPage();
        if (!ShiroUtils.getSysUser().isAdmin()) {
            jobEnterprise.setUserId(ShiroUtils.getUserId());
        }
        List<JobEnterprise> list = jobEnterpriseService.selectJobEnterpriseList(jobEnterprise);
        return getDataTable(list);
    }


    /**
     * 查询邀请面试企业列表
     */
    @PostMapping("/enterpriseList")
    @ResponseBody
    public TableDataInfo enterpriseList(JobEnterprise jobEnterprise)
    {
        startPage();

        List<JobEnterprise> list = jobEnterpriseService.selectJobInviteEnterpriseList(jobEnterprise);
        return getDataTable(list);
    }

    /**
     * 导出企业列表
     */
    @Log(title = "企业", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(JobEnterprise jobEnterprise)
    {
        List<JobEnterprise> list = jobEnterpriseService.selectJobEnterpriseList(jobEnterprise);
        ExcelUtil<JobEnterprise> util = new ExcelUtil<JobEnterprise>(JobEnterprise.class);
        return util.exportExcel(list, "enterprise");
    }

    /**
     * 新增企业
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存企业
     */
    @Log(title = "企业", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JobEnterprise jobEnterprise)
    {
        JobEnterprise enterprise = new JobEnterprise();
        enterprise.setUserId(ShiroUtils.getUserId());
        List<JobEnterprise> enterpriseList = jobEnterpriseService.selectJobEnterpriseList(enterprise);
        if (enterpriseList.size() > 0) {
            return error("当前账号已创建企业！");
        }
        return toAjax(jobEnterpriseService.insertJobEnterprise(jobEnterprise));
    }

    /**
     * 修改企业
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        JobEnterprise jobEnterprise = jobEnterpriseService.selectJobEnterpriseById(id);
        mmap.put("jobEnterprise", jobEnterprise);
        return prefix + "/edit";
    }

    /**
     * 修改保存企业
     */
    @Log(title = "企业", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JobEnterprise jobEnterprise)
    {
        return toAjax(jobEnterpriseService.updateJobEnterprise(jobEnterprise));
    }

    /**
     * 删除企业
     */
    @Log(title = "企业", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String id)
    {
        return toAjax(jobEnterpriseService.deleteJobEnterpriseByIds(id));
    }



    @GetMapping("/concernInfo")
    public String concernInfo() {

        return prefix + "/my_concern";
    }

    @PostMapping("/myConcern")
    @ResponseBody
    public TableDataInfo myConcern() {

        startPage();
        List<JobResume> resumeList = jobResumeService.selectMyConcern(ShiroUtils.getUserId());
        return getDataTable(resumeList);
    }
}
