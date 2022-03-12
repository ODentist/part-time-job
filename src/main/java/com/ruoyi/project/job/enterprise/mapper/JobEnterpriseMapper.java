package com.ruoyi.project.job.enterprise.mapper;

import com.ruoyi.project.job.enterprise.domain.JobEnterprise;
import java.util.List;

/**
 * 企业Mapper接口
 * 
 * @author .
 * @date 2020-02-10
 */
public interface JobEnterpriseMapper 
{
    /**
     * 查询企业
     * 
     * @param id 企业ID
     * @return 企业
     */
    public JobEnterprise selectJobEnterpriseById(Long id);

    /**
     * 查询企业列表
     * 
     * @param jobEnterprise 企业
     * @return 企业集合
     */
    public List<JobEnterprise> selectJobEnterpriseList(JobEnterprise jobEnterprise);

    public List<JobEnterprise> selectJobInviteEnterpriseList(JobEnterprise jobEnterprise);

    /**
     * 新增企业
     * 
     * @param jobEnterprise 企业
     * @return 结果
     */
    public int insertJobEnterprise(JobEnterprise jobEnterprise);

    /**
     * 修改企业
     * 
     * @param jobEnterprise 企业
     * @return 结果
     */
    public int updateJobEnterprise(JobEnterprise jobEnterprise);

    /**
     * 删除企业
     * 
     * @param id 企业ID
     * @return 结果
     */
    public int deleteJobEnterpriseById(Long id);

    /**
     * 批量删除企业
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobEnterpriseByIds(String[] ids);
}
