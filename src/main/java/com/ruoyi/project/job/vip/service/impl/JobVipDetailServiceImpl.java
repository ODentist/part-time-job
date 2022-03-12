package com.ruoyi.project.job.vip.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.job.vip.mapper.JobVipDetailMapper;
import com.ruoyi.project.job.vip.domain.JobVipDetail;
import com.ruoyi.project.job.vip.service.IJobVipDetailService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 用户开通vip记录Service业务层处理
 * 
 * @author .
 * @date 2020-02-07
 */
@Service
public class JobVipDetailServiceImpl implements IJobVipDetailService 
{
    @Autowired
    private JobVipDetailMapper jobVipDetailMapper;

    /**
     * 查询用户开通vip记录
     * 
     * @param userId 用户开通vip记录ID
     * @return 用户开通vip记录
     */
    @Override
    public JobVipDetail selectJobVipDetailById(Long userId)
    {
        return jobVipDetailMapper.selectJobVipDetailById(userId);
    }

    /**
     * 查询用户开通vip记录列表
     * 
     * @param jobVipDetail 用户开通vip记录
     * @return 用户开通vip记录
     */
    @Override
    public List<JobVipDetail> selectJobVipDetailList(JobVipDetail jobVipDetail)
    {
        return jobVipDetailMapper.selectJobVipDetailList(jobVipDetail);
    }

    /**
     * 新增用户开通vip记录
     * 
     * @param jobVipDetail 用户开通vip记录
     * @return 结果
     */
    @Override
    public int insertJobVipDetail(JobVipDetail jobVipDetail)
    {
        return jobVipDetailMapper.insertJobVipDetail(jobVipDetail);
    }

    /**
     * 修改用户开通vip记录
     * 
     * @param
     * @return 结果
     */
    @Override
    public int updateJobVipDetail(Long userId, Integer status)
    {
        JobVipDetail jobVipDetail = new JobVipDetail();
        jobVipDetail.setUserId(userId);
        jobVipDetail.setStatus(status);
        return jobVipDetailMapper.updateJobVipDetail(jobVipDetail);
    }

    /**
     * 删除用户开通vip记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJobVipDetailByIds(String ids)
    {
        return jobVipDetailMapper.deleteJobVipDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户开通vip记录信息
     * 
     * @param userId 用户开通vip记录ID
     * @return 结果
     */
    @Override
    public int deleteJobVipDetailById(Long userId)
    {
        return jobVipDetailMapper.deleteJobVipDetailById(userId);
    }
}
