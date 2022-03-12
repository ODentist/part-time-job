package com.ruoyi.project.job.apply.service.impl;

import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.common.utils.text.Convert;
import com.ruoyi.project.job.apply.domain.JobApplyDetail;
import com.ruoyi.project.job.apply.mapper.JobApplyDetailMapper;
import com.ruoyi.project.job.apply.service.IJobApplyDetailService;
import com.ruoyi.project.job.receive.domain.JobReceiveDetail;
import com.ruoyi.project.job.receive.mapper.JobReceiveDetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * 职位申请记录Service业务层处理
 * 
 * @author .
 * @date 2020-02-05
 */
@Service
public class JobApplyDetailServiceImpl implements IJobApplyDetailService 
{
    @Autowired
    private JobApplyDetailMapper jobApplyDetailMapper;

    @Autowired
    private JobReceiveDetailMapper jobReceiveDetailMapper;

    /**
     * 查询职位申请记录
     * 
     * @param applyId 职位申请记录ID
     * @return 职位申请记录
     */
    @Override
    public JobApplyDetail selectJobApplyDetailById(Long applyId)
    {
        return jobApplyDetailMapper.selectJobApplyDetailById(applyId);
    }

    @Override
    public JobApplyDetail selectJobApplyDetail(Long positionId)
    {
        return jobApplyDetailMapper.selectJobApplyDetail(positionId, ShiroUtils.getUserId());
    }

    /**
     * 查询职位申请记录列表
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 职位申请记录
     */
    @Override
    public List<JobApplyDetail> selectJobApplyDetailList(JobApplyDetail jobApplyDetail)
    {
        return jobApplyDetailMapper.selectJobApplyDetailList(jobApplyDetail);
    }

    @Override
    public int insertJobApplyDetail(JobApplyDetail jobApplyDetail) {
        return jobApplyDetailMapper.insertJobApplyDetail(jobApplyDetail);
    }

    /**
     * 新增职位申请记录
     * 
     * 职位申请记录
     * @return 结果
     */
    @Override
    @Transactional(rollbackFor = Exception.class, readOnly = false)
    public int addJobApplyDetail(Long userId, Long positionId, Long resumeId)
    {
        // 新增申请记录
        JobApplyDetail jobApplyDetail = new JobApplyDetail();
        jobApplyDetail.setEnterpriseId(userId);
        jobApplyDetail.setUserId(ShiroUtils.getUserId());
        jobApplyDetail.setResumeId(resumeId);
        jobApplyDetail.setPositionId(positionId);
        jobApplyDetail.setApplyTime(new Date());
        jobApplyDetailMapper.insertJobApplyDetail(jobApplyDetail);

        // 新增职位接收记录
        JobReceiveDetail jobReceiveDetail = new JobReceiveDetail();
        jobReceiveDetail.setApplyId(jobApplyDetail.getApplyId());
        jobReceiveDetail.setPositionId(positionId);
        jobReceiveDetail.setUserId(userId);
        jobReceiveDetail.setResumeId(resumeId);
        jobReceiveDetail.setReceiveTime(new Date());
        return jobReceiveDetailMapper.insertJobReceiveDetail(jobReceiveDetail);

    }


    /**
     * 修改职位申请记录
     * 
     * @param jobApplyDetail 职位申请记录
     * @return 结果
     */
    @Override
    public int updateJobApplyDetail(JobApplyDetail jobApplyDetail)
    {
        return jobApplyDetailMapper.updateJobApplyDetail(jobApplyDetail);
    }

    /**
     * 删除职位申请记录对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJobApplyDetailByIds(String ids)
    {
        return jobApplyDetailMapper.deleteJobApplyDetailByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除职位申请记录信息
     * 
     * @param applyId 职位申请记录ID
     * @return 结果
     */
    @Override
    public int deleteJobApplyDetailById(Long applyId)
    {
        return jobApplyDetailMapper.deleteJobApplyDetailById(applyId);
    }
}
