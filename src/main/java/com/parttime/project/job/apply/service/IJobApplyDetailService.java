package com.parttime.project.job.apply.service;

import com.parttime.project.job.apply.domain.JobApplyDetail;
import java.util.List;

/**
 * 职位申请记录Service接口
 * 
 * @author .
 * @date 2020-02-05
 */
public interface IJobApplyDetailService 
{
    /**
     * 查询职位申请记录
     * 
     * @param applyId 职位申请记录ID
     * @return 职位申请记录
     */
    public JobApplyDetail selectJobApplyDetailById(Long applyId);

    /**
     * @param positionId 职位id
     * @return
     */
    public JobApplyDetail selectJobApplyDetail(Long positionId);

    /**
     * 查询职位申请记录列表
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 职位申请记录集合
     */
    public List<JobApplyDetail> selectJobApplyDetailList(JobApplyDetail jobApplyDetail);
    /**
     * 新增职位申请记录
     *
     * @param jobApplyDetail 职位申请记录
     * @return 结果
     */
    public int insertJobApplyDetail(JobApplyDetail jobApplyDetail);
    /**
     * 新增职位申请记录
     * 职位申请记录
     * @param
     * @return 结果
     */
    public int addJobApplyDetail(Long userId, Long positionId, Long resumeId);

    /**
     * 修改职位申请记录
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 结果
     */
    public int updateJobApplyDetail(JobApplyDetail jobApplyDetail);

    /**
     * 批量删除职位申请记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobApplyDetailByIds(String ids);

    /**
     * 删除职位申请记录信息
     * 
     * @param applyId 职位申请记录ID
     * @return 结果
     */
    public int deleteJobApplyDetailById(Long applyId);
}
