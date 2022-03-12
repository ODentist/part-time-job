package com.ruoyi.project.job.resume.service;

import com.ruoyi.project.job.resume.domain.JobResume;
import java.util.List;

/**
 * 简历Service接口
 * 
 * @author .
 * @date 2020-02-05
 */
public interface IJobResumeService 
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
     * 批量删除简历
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobResumeByIds(String ids);

    /**
     * 删除简历信息
     * 
     * @param resumeId 简历ID
     * @return 结果
     */
    public int deleteJobResumeById(Long resumeId);

    /**
     * 发布简历信息
     *
     * @param resumeId 简历ID
     * @return 结果
     */
    public int enableJobResumeById(Long resumeId, Integer status);

    /**
     * 关注简历
     * @param resumeId
     * @return
     */
    public int concern(Long resumeId);

    /**
     * 取消管制
     * @param resumeId
     * @return
     */
    public int cancelConcern(Long resumeId);

    public List<JobResume> selectMyConcern(Long userId);
}
