package com.parttime.project.job.resume.controller;

import com.parttime.common.utils.StringUtils;
import com.parttime.common.utils.security.ShiroUtils;
import com.parttime.framework.aspectj.lang.annotation.Log;
import com.parttime.framework.aspectj.lang.enums.BusinessType;
import com.parttime.framework.web.controller.BaseController;
import com.parttime.framework.web.domain.AjaxResult;
import com.parttime.framework.web.page.TableDataInfo;
import com.parttime.project.job.apply.mapper.JobApplyDetailMapper;
import com.parttime.project.job.apply.service.IJobApplyDetailService;
import com.parttime.project.job.resume.domain.JobConcern;
import com.parttime.project.job.resume.domain.JobResume;
import com.parttime.project.job.resume.mapper.JobConcernMapper;
import com.parttime.project.job.resume.service.IJobResumeService;
import com.parttime.project.system.dict.service.IDictDataService;
import com.parttime.project.system.role.mapper.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 简历库Controller
 *
 * @author .
 * @date 2020-02-05
 */
@Controller
@RequestMapping("/job/resumeLib")
public class JobResumeLibController extends BaseController {

    private String prefix = "job/resume";

    @Autowired
    private IJobResumeService jobResumeService;

    @Autowired
    private IJobApplyDetailService jobApplyDetailService;

    @Autowired
    private JobApplyDetailMapper jobApplyDetailMapper;

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private IDictDataService dictDataService;

    @Autowired
    private JobConcernMapper jobConcernMapper;

    @GetMapping()
    public String resume()
    {
        return prefix + "/resume_lib";
    }

    /**
     * 查询简历列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobResume jobResume)
    {
        startPage();
        // 发布的简历
        jobResume.setStatus(1);
        List<JobResume> list = jobResumeService.selectJobResumeConcernList(jobResume);
        // 查询用户是否是游客
        int count = roleMapper.selectRoleKeyCount(ShiroUtils.getUserId());
        if (count == 0) {
            list.stream().forEach(s -> {
                s.setView(true);
                if (StringUtils.isNotEmpty(s.getFileCode())) {
                    s.setUploadStatus("已上传附件");
                } else {
                    s.setUploadStatus("未上传附件");
                }
            });
        }

        return getDataTable(list);
    }

    /**
     * 选择个人简历列表
     */
    @PostMapping("/resumeList")
    @ResponseBody
    public TableDataInfo resumeList(JobResume jobResume)
    {
        startPage();
        // 发布的简历
        jobResume.setStatus(1);
        jobResume.setUserId(ShiroUtils.getUserId());
        List<JobResume> list = jobResumeService.selectJobResumeList(jobResume);
        return getDataTable(list);
    }

    /**
     * 投递简历
     */
    @Log(title = "投递简历", businessType = BusinessType.GRANT)
    @PostMapping("/delivery")
    @ResponseBody
    public AjaxResult selectAuthUserAll(Long userId, Long positionId, Long resumeId)
    {
        int count = jobApplyDetailMapper.selectCountByDay(ShiroUtils.getUserId());
        if ("0".equals(ShiroUtils.getSysUser().getVip())) {
            if (count >= 5) {
                return error("非VIP用户每天可投递次数不能超过5次！");
            }
        } else {
            if (count >= 20) {
                return error("VIP用户每天可投递次数不能超过20次！");
            }
        }

        return toAjax(jobApplyDetailService.addJobApplyDetail(userId, positionId, resumeId));
    }

    /**
     * 查看简历
     */
    @GetMapping("/view/{resumeId}")
    public String view(@PathVariable("resumeId") Long resumeId, ModelMap mmap)
    {
        JobResume jobResume = jobResumeService.selectJobResumeById(resumeId);
        jobResume.setPositionTypeName(dictDataService.selectDictLabel("job_position_type", jobResume.getPositionType().toString()));
        jobResume.setAreaName(dictDataService.selectDictLabel("job_area", jobResume.getArea()));
        jobResume.setSalaryName(dictDataService.selectDictLabel("job_salary", jobResume.getSalary().toString()));
        mmap.put("jobResume", jobResume);
        return prefix + "/view";
    }

    /**
     * 关注
     */
    @Log(title = "关注", businessType = BusinessType.GRANT)
    @PostMapping("/concern")
    @ResponseBody
    public AjaxResult concern(Long resumeId)
    {
        JobConcern jobConcern = new JobConcern();
        jobConcern.setUserId(ShiroUtils.getUserId());
        jobConcern.setResumeId(resumeId);
        List<JobConcern> concernList = jobConcernMapper.selectJobConcernList(jobConcern);
        if (concernList.size() > 0) {
            return error("当前账号已关注过该简历！");
        }
        return toAjax(jobResumeService.concern(resumeId));
    }

    /**
     * 取消关注
     */
    @Log(title = "取消关注", businessType = BusinessType.GRANT)
    @PostMapping("/cancelConcern")
    @ResponseBody
    public AjaxResult cancelConcern(Long resumeId)
    {
        return toAjax(jobResumeService.cancelConcern(resumeId));
    }

}

