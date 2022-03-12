package com.ruoyi.project.job.resume.mapper;

import com.ruoyi.project.job.resume.domain.JobResume;
import java.util.List;

/**
 * 简历Mapper接口
 * 
 * @author .
 * @date 2020-02-05
 */
public interface JobResumeMapper 
{
    /**
     * 查询简历
     * 
     * @param resumeId 简历ID
     * @return 简历
     */
    public JobResume selectJobResumeById(Long resumeId);

    /**
     * 查询简历列表
     * 
     * @param jobResume 简历
     * @return 简历集合
     */
    public List<JobResume> selectJobResumeList(JobResume jobResume);

    /**
     * 查询简历关注列表
     * @param jobResume
     * @return
     */
    public List<JobResume> selectJobResumeConcernList(JobResume jobResume);
    /**
     * 新增简历
     * 
     * @param jobResume 简历
     * @return 结果
     */
    public int insertJobResume(JobResume jobResume);

    /**
     * 修改简历
     * 
     * @param jobResume 简历
     * @return 结果
     */
    public int updateJobResume(JobResume jobResume);

    /**
     * 删除简历
     * 
     * @param resumeId 简历ID
     * @return 结果
     */
    public int deleteJobResumeById(Long resumeId);

    /**
     * 批量删除简历
     * 
     * @param resumeIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobResumeByIds(String[] resumeIds);

    public List<JobResume> selectMyConcern(Long userId);
}
