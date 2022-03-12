package com.ruoyi.project.job.enterprise.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.job.position.domain.JobPosition;
import com.ruoyi.project.job.position.mapper.JobPositionMapper;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.job.enterprise.mapper.JobEnterpriseMapper;
import com.ruoyi.project.job.enterprise.domain.JobEnterprise;
import com.ruoyi.project.job.enterprise.service.IJobEnterpriseService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 企业Service业务层处理
 * 
 * @author .
 * @date 2020-02-10
 */
@Service
public class JobEnterpriseServiceImpl implements IJobEnterpriseService 
{
    @Autowired
    private JobEnterpriseMapper jobEnterpriseMapper;
    @Autowired
    private JobPositionMapper jobPositionMapper;

    /**
     * 查询企业
     * 
     * @param id 企业ID
     * @return 企业
     */
    @Override
    public JobEnterprise selectJobEnterpriseById(Long id)
    {
        return jobEnterpriseMapper.selectJobEnterpriseById(id);
    }

    /**
     * 查询企业列表
     * 
     * @param jobEnterprise 企业
     * @return 企业
     */
    @Override
    public List<JobEnterprise> selectJobEnterpriseList(JobEnterprise jobEnterprise)
    {
        return jobEnterpriseMapper.selectJobEnterpriseList(jobEnterprise);
    }

    @Override
    public List<JobEnterprise> selectJobInviteEnterpriseList(JobEnterprise jobEnterprise) {
        return jobEnterpriseMapper.selectJobInviteEnterpriseList(jobEnterprise);
    }

    /**
     * 新增企业
     * 
     * @param jobEnterprise 企业
     * @return 结果
     */
    @Override
    public int insertJobEnterprise(JobEnterprise jobEnterprise)
    {
        jobEnterprise.setUserId(ShiroUtils.getUserId());
        jobEnterprise.setCreateTime(DateUtils.getNowDate());
        jobEnterprise.setCreateBy(ShiroUtils.getSysUser().getUserName());
        return jobEnterpriseMapper.insertJobEnterprise(jobEnterprise);
    }

    /**
     * 修改企业
     * 
     * @param jobEnterprise 企业
     * @return 结果
     */
    @Override
    public int updateJobEnterprise(JobEnterprise jobEnterprise)
    {
        jobEnterprise.setUpdateTime(DateUtils.getNowDate());
        jobEnterprise.setUpdateBy(ShiroUtils.getSysUser().getUserName());
        return jobEnterpriseMapper.updateJobEnterprise(jobEnterprise);
    }

    /**
     * 删除企业对象
     * 
     * @param id 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJobEnterpriseByIds(String id)
    {
        JobEnterprise enterprise = jobEnterpriseMapper.selectJobEnterpriseById(Long.valueOf(id));
        JobPosition position = new JobPosition();
        position.setUserId(enterprise.getUserId());
        List<JobPosition> positionList = jobPositionMapper.selectJobPositionList(position);
        List<String> idList = positionList.stream().map(s -> s.getPositionId().toString()).collect(Collectors.toList());
        if (CollectionUtils.isNotEmpty(idList)) {
            jobPositionMapper.deleteJobPositionByIds(idList.toArray(new String[idList.size()]));
        }

        return jobEnterpriseMapper.deleteJobEnterpriseByIds(Convert.toStrArray(id));
    }


    /**
     * 删除企业信息
     * 
     * @param id 企业ID
     * @return 结果
     */
    @Override
    public int deleteJobEnterpriseById(Long id)
    {
        return jobEnterpriseMapper.deleteJobEnterpriseById(id);
    }
}
