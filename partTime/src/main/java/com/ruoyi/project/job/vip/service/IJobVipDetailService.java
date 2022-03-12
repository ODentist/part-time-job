package com.ruoyi.project.job.vip.service;

import com.ruoyi.project.job.vip.domain.JobVipDetail;
import java.util.List;

/**
 * 用户开通vip记录Service接口
 * 
 * @author .
 * @date 2020-02-07
 */
public interface IJobVipDetailService 
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
    public int updateJobVipDetail(Long userId, Integer status);

    /**
     * 批量删除用户开通vip记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobVipDetailByIds(String ids);

    /**
     * 删除用户开通vip记录信息
     * 
     * @param userId 用户开通vip记录ID
     * @return 结果
     */
    public int deleteJobVipDetailById(Long userId);
}
