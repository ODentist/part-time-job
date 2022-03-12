package com.ruoyi.project.job.resume.service.impl;

import java.util.Date;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.job.resume.domain.JobConcern;
import com.ruoyi.project.job.resume.mapper.JobConcernMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.job.resume.mapper.JobResumeMapper;
import com.ruoyi.project.job.resume.domain.JobResume;
import com.ruoyi.project.job.resume.service.IJobResumeService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 简历Service业务层处理
 * 
 * @author .
 * @date 2020-02-05
 */
@Service
public class JobResumeServiceImpl implements IJobResumeService 
{
    @Autowired
    private JobResumeMapper jobResumeMapper;

    @Autowired
    private JobConcernMapper jobConcernMapper;

    /**
     * 查询简历
     * 
     * @param resumeId 简历ID
     * @return 简历
     */
    @Override
    public JobResume selectJobResumeById(Long resumeId)
    {
        return jobResumeMapper.selectJobResumeById(resumeId);
    }

    /**
     * 查询简历列表
     * 
     * @param jobResume 简历
     * @return 简历
     */
    @Override
    public List<JobResume> selectJobResumeList(JobResume jobResume)
    {
        return jobResumeMapper.selectJobResumeList(jobResume);
    }

    @Override
    public List<JobResume> selectJobResumeConcernList(JobResume jobResume) {
        jobResume.setUserId(ShiroUtils.getUserId());
        return jobResumeMapper.selectJobResumeConcernList(jobResume);
    }

    /**
     * 新增简历
     * 
     * @param jobResume 简历
     * @return 结果
     */
    @Override
    public int insertJobResume(JobResume jobResume)
    {
        jobResume.setUserId(ShiroUtils.getUserId());
        jobResume.setCreateTime(DateUtils.getNowDate());
        return jobResumeMapper.insertJobResume(jobResume);
    }

    /**
     * 修改简历
     * 
     * @param jobResume 简历
     * @return 结果
     */
    @Override
    public int updateJobResume(JobResume jobResume)
    {
        jobResume.setUpdateTime(DateUtils.getNowDate());
        return jobResumeMapper.updateJobResume(jobResume);
    }

    /**
     * 删除简历对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJobResumeByIds(String ids)
    {
        return jobResumeMapper.deleteJobResumeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除简历信息
     * 
     * @param resumeId 简历ID
     * @return 结果
     */
    @Override
    public int deleteJobResumeById(Long resumeId)
    {
        return jobResumeMapper.deleteJobResumeById(resumeId);
    }

    /**
     * 发布简历信息
     * @param resumeId 简历ID
     * @param status
     * @return
     */
    @Override
    public int enableJobResumeById(Long resumeId, Integer status) {
        JobResume jobResume = new JobResume();
        jobResume.setResumeId(resumeId);
        jobResume.setStatus(status);
        return jobResumeMapper.updateJobResume(jobResume);
    }


    @Override
    public int concern(Long resumeId) {
        JobConcern jobConcern = new JobConcern();
        jobConcern.setConcernTime(new Date());
        jobConcern.setResumeId(resumeId);
        jobConcern.setUserId(ShiroUtils.getUserId());
        return jobConcernMapper.insertJobConcern(jobConcern);

    }

    @Override
    public int cancelConcern(Long resumeId) {
        return jobConcernMapper.deleteJobConcern(resumeId, ShiroUtils.getUserId());
    }

    @Override
    public List<JobResume> selectMyConcern(Long userId) {
        return jobResumeMapper.selectMyConcern(userId);
    }
}
