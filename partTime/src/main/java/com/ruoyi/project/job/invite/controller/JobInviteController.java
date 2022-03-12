package com.ruoyi.project.job.invite.controller;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.job.enterprise.domain.JobEnterprise;
import com.ruoyi.project.job.enterprise.service.IJobEnterpriseService;
import com.ruoyi.project.job.invite.domain.JobInvite;
import com.ruoyi.project.job.invite.service.IJobInviteService;
import com.ruoyi.project.job.invite.vo.InviteVO;
import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 面试邀请Controller
 * 
 * @author .
 * @date 2020-02-10
 */
@Controller
@RequestMapping("/job/invite")
public class JobInviteController extends BaseController
{
    private String prefix = "job/invite";

    @Autowired
    private IJobInviteService jobInviteService;
    @Autowired
    private IJobEnterpriseService enterpriseService;

    @GetMapping()
    public String invite()
    {
        return prefix + "/invite";
    }

    /**
     * 查询面试邀请列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobInvite jobInvite)
    {
        startPage();
        List<JobInvite> list = jobInviteService.selectJobInviteList(jobInvite);
        return getDataTable(list);
    }

    /**
     * 导出面试邀请列表
     */
    @Log(title = "面试邀请", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(JobInvite jobInvite)
    {
        List<JobInvite> list = jobInviteService.selectJobInviteList(jobInvite);
        ExcelUtil<JobInvite> util = new ExcelUtil<JobInvite>(JobInvite.class);
        return util.exportExcel(list, "invite");
    }

    /**
     * 新增面试邀请
     */
    @GetMapping("/add/{resumeId}")
    public String add(@PathVariable("resumeId") Long resumeId, ModelMap modelMap)
    {
        modelMap.put("resumeId", resumeId);
        return prefix + "/add";
    }

    /**
     * 新增保存面试邀请
     */
    @Log(title = "面试邀请", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JobInvite jobInvite)
    {
        JobEnterprise jobEnterprise = new JobEnterprise();
        jobEnterprise.setUserId(ShiroUtils.getUserId());
        List<JobEnterprise> enterpriseList = enterpriseService.selectJobEnterpriseList(jobEnterprise);
        if (enterpriseList == null || enterpriseList.size() <= 0) {
            return error("请完善企业信息！");
        }
        JobInvite invite = new JobInvite();
        invite.setUserId(ShiroUtils.getUserId());
        invite.setResumeId(jobInvite.getResumeId());
        List<JobInvite> inviteList = jobInviteService.selectJobInviteList(invite);
        if (inviteList.size() > 0) {
            return error("当前已邀请过该简历！");
        }
        return toAjax(jobInviteService.insertJobInvite(jobInvite));
    }

    /**
     * 修改面试邀请
     */
    @GetMapping("/edit/{inviteId}")
    public String edit(@PathVariable("inviteId") Long inviteId, ModelMap mmap)
    {
        JobInvite jobInvite = jobInviteService.selectJobInviteById(inviteId);
        mmap.put("jobInvite", jobInvite);
        return prefix + "/edit";
    }

    /**
     * 修改保存面试邀请
     */
    @Log(title = "面试邀请", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JobInvite jobInvite)
    {
        return toAjax(jobInviteService.updateJobInvite(jobInvite));
    }

    /**
     * 删除面试邀请
     */
    @Log(title = "面试邀请", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jobInviteService.deleteJobInviteByIds(ids));
    }

    @GetMapping("/view/{inviteId}")
    public String view(@PathVariable("inviteId")Long inviteId, ModelMap mmap)
    {

        InviteVO inviteVO = jobInviteService.selectJobInvite(inviteId);
        mmap.put("inviteVO", inviteVO);
        return prefix + "/view";
    }

    @Log(title = "修改面试邀请状态")
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(JobInvite jobInvite)
    {
        return toAjax(jobInviteService.changeStatusById(jobInvite));
    }

    @GetMapping("/refuseReason/{inviteId}")
    public String refuseReason(@PathVariable("inviteId") Long inviteId , ModelMap mmap)
    {
        JobInvite jobInvite = jobInviteService.selectJobInviteById(inviteId);
        jobInvite.setOperateResult(1);
        mmap.put("jobInvite", jobInvite);
        return prefix + "/refuse";
    }

}
