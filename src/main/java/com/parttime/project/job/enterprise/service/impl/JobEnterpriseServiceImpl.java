package com.parttime.project.job.enterprise.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.parttime.common.utils.DateUtils;
import com.parttime.common.utils.security.ShiroUtils;
import com.parttime.project.job.position.domain.JobPosition;
import com.parttime.project.job.position.mapper.JobPositionMapper;
import com.parttime.project.system.dashboard.domain.EnterpriseDto;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.parttime.project.job.enterprise.mapper.JobEnterpriseMapper;
import com.parttime.project.job.enterprise.domain.JobEnterprise;
import com.parttime.project.job.enterprise.service.IJobEnterpriseService;
import com.parttime.common.utils.text.Convert;

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

    /**
     *
     * @return  共有多少家企业
     */
    @Override
    public int selectAllEnterpriseCounts() {
        return jobEnterpriseMapper.selectAllEnterpriseCounts();
    }

    /**
     * 昨天共有多少家企业注册
     * @return
     */
    @Override
    public int yesterdayRegister() {
        return jobEnterpriseMapper.yesterdayRegister();
    }

    /**
     * 今天共有多少家企业注册
     * @return
     */
    @Override
    public int todayRegister() {
        return jobEnterpriseMapper.todayRegister();
    }

    /**
     * 查询企业名字和地址
     */
    @Override
    public List<EnterpriseDto> selectEnterpriseNameAndAddress() {
        return jobEnterpriseMapper.selectEnterpriseNameAndAddress();
    }

}
