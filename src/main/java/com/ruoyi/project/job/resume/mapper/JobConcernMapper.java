package com.ruoyi.project.job.resume.mapper;

import com.ruoyi.project.job.resume.domain.JobConcern;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 企业关注Mapper接口
 *
 * @author .
 * @date 2020-02-10
 */
public interface JobConcernMapper
{
    /**
     * 查询企业关注
     *
     * @param id 企业关注ID
     * @return 企业关注
     */
    public JobConcern selectJobConcernById(Long id);

    /**
     * 查询企业关注列表
     *
     * @param jobConcern 企业关注
     * @return 企业关注集合
     */
    public List<JobConcern> selectJobConcernList(JobConcern jobConcern);

    /**
     * 新增企业关注
     *
     * @param jobConcern 企业关注
     * @return 结果
     */
    public int insertJobConcern(JobConcern jobConcern);

    /**
     * 删除企业关注
     *
     * @param id 企业关注ID
     * @return 结果
     */
    public int deleteJobConcernById(Long id);

    public int deleteJobConcern(@Param("resumeId") Long resumeId,@Param("userId") Long userId);

}
