package com.parttime.project.job.vip.mapper;

import com.parttime.project.job.vip.domain.JobVipDetail;
import java.util.List;

/**
 * 用户开通vip记录Mapper接口
 * 
 * @author .
 * @date 2020-02-07
 */
public interface JobVipDetailMapper 
{
    /**
     * 查询用户开通vip记录
     * 
     * @param userId 用户开通vip记录ID
     * @return 用户开通vip记录
     */
    public JobVipDetail selectJobVipDetailById(Long userId);

    /**
     * 查询用户开通vip记录列表
     * 
     * @param jobVipDetail 用户开通vip记录
     * @return 用户开通vip记录集合
     */
    public List<JobVipDetail> selectJobVipDetailList(JobVipDetail jobVipDetail);

    /**
     * 新增用户开通vip记录
     * 
     * @param jobVipDetail 用户开通vip记录
     * @return 结果
     */
    public int insertJobVipDetail(JobVipDetail jobVipDetail);

    /**
     * 修改用户开通vip记录
     * 
     * @param jobVipDetail 用户开通vip记录
     * @return 结果
     */
    public int updateJobVipDetail(JobVipDetail jobVipDetail);

    /**
     * 删除用户开通vip记录
     * 
     * @param userId 用户开通vip记录ID
     * @return 结果
     */
    public int deleteJobVipDetailById(Long userId);

    /**
     * 批量删除用户开通vip记录
     * 
     * @param userIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobVipDetailByIds(String[] userIds);
}
