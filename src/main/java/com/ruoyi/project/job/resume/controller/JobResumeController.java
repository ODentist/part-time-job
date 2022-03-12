package com.ruoyi.project.job.resume.controller;

import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.file.FileUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.job.resume.domain.JobResume;
import com.ruoyi.project.job.resume.service.IJobResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 简历Controller
 * 
 * @author .
 * @date 2020-02-05
 */
@Controller
@RequestMapping("/job/resume")
public class JobResumeController extends BaseController
{
    private String prefix = "job/resume";

    private static final String RESUME_PATH = "D:/resume/uploadFile/";

    @Autowired
    private IJobResumeService jobResumeService;

    @GetMapping()
    public String resume()
    {
        return prefix + "/resume";
    }

    /**
     * 查询简历列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(JobResume jobResume)
    {
        startPage();
        if (!ShiroUtils.getSysUser().isAdmin()) {
            jobResume.setUserId(ShiroUtils.getUserId());
        }
        List<JobResume> list = jobResumeService.selectJobResumeList(jobResume);
        list.stream().forEach(s -> {
            if (StringUtils.isNotEmpty(s.getFileCode())) {
                s.setUploadStatus("已上传附件");
            } else {
                s.setUploadStatus("未上传附件");
            }
        });
        return getDataTable(list);
    }


    /**
     * 新增简历
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存简历
     */
    @Log(title = "简历", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(JobResume jobResume)
    {
        if ("0".equals(ShiroUtils.getSysUser().getVip())) {
            JobResume resume = new JobResume();
            resume.setUserId(ShiroUtils.getUserId());
            List<JobResume> jobResumeList = jobResumeService.selectJobResumeList(resume);
            if (jobResumeList.size() >= 1) {
                return AjaxResult.error("非VIP用户只能创建一份简历！");
            }
        }
        return toAjax(jobResumeService.insertJobResume(jobResume));
    }

    /**
     * 修改简历
     */
    @GetMapping("/edit/{resumeId}")
    public String edit(@PathVariable("resumeId") Long resumeId, ModelMap mmap)
    {
        JobResume jobResume = jobResumeService.selectJobResumeById(resumeId);
        mmap.put("jobResume", jobResume);
        return prefix + "/edit";
    }

    /**
     * 修改保存简历
     */
    @Log(title = "简历", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(JobResume jobResume)
    {
        return toAjax(jobResumeService.updateJobResume(jobResume));
    }

    /**
     * 删除简历
     */
    @Log(title = "简历", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jobResumeService.deleteJobResumeByIds(ids));
    }

    /**
     * 发布简历
     */
    @Log(title = "发布简历")
    @PostMapping("/enable")
    @ResponseBody
    public AjaxResult enable(Long resumeId, Integer status)
    {
        if ("0".equals(ShiroUtils.getSysUser().getVip())) {
            JobResume resume = new JobResume();
            resume.setUserId(ShiroUtils.getUserId());
            List<JobResume> jobResumeList = jobResumeService.selectJobResumeList(resume);
            if (jobResumeList.size() >= 1) {
                return AjaxResult.error("成为VIP可提升简历创建发布份数！");
            }
        }
        return toAjax(jobResumeService.enableJobResumeById(resumeId, status));
    }


    @GetMapping("/inviteDetail/{resumeId}")
    public String deliveryDetail(@PathVariable("resumeId") Long resumeId, ModelMap mmap)
    {
        mmap.put("resumeId", resumeId);
        return prefix + "/invite_list";
    }


    /**
     * 上传简历
     * @param file
     * @param resumeId
     * @return
     * @throws Exception
     */
    @PostMapping("/importData")
    @ResponseBody
    public AjaxResult importData(MultipartFile file, Long resumeId) throws Exception
    {
        String uploadFileName = file.getOriginalFilename();

        // 上传完成后的file
        String fileName = FileUploadUtils.upload(RESUME_PATH + resumeId, file);

        JobResume resume = jobResumeService.selectJobResumeById(resumeId);
        if (StringUtils.isNotEmpty(resume.getFileCode())) {
            FileUtils.deleteFile(RESUME_PATH + resumeId + "/" + resume.getFileCode());
        }
        resume.setFileCode(fileName);
        resume.setFileName(uploadFileName);
        jobResumeService.updateJobResume(resume);
        return success("简历附件" + uploadFileName + "上传成功！");
    }


    /**
     * 下载简历
     * @param resumeId
     * @return
     */
    @GetMapping("/downloadFile")
    public void downloadFile(Long resumeId, String name, HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        JobResume resume = jobResumeService.selectJobResumeById(resumeId);

        String realFileName = name + "_" + resume.getFileName().substring(resume.getFileName().indexOf("_") + 1);
        String filePath = RESUME_PATH + resumeId + "/" + resume.getFileCode();

        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition",
                "attachment;fileName=" + FileUtils.setFileDownloadHeader(request, realFileName));
        FileUtils.writeBytes(filePath, response.getOutputStream());
    }

}
