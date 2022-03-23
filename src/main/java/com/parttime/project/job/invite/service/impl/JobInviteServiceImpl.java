package com.parttime.project.job.invite.service.impl;

import java.util.Date;
import java.util.List;

import com.parttime.common.utils.security.ShiroUtils;
import com.parttime.project.job.invite.vo.InviteVO;
import com.parttime.project.system.dict.mapper.DictDataMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.parttime.project.job.invite.mapper.JobInviteMapper;
import com.parttime.project.job.invite.domain.JobInvite;
import com.parttime.project.job.invite.service.IJobInviteService;
import com.parttime.common.utils.text.Convert;

/**
 * 面试邀请Service业务层处理
 * 
 * @author .
 * @date 2020-02-10
 */
@Service
public class JobInviteServiceImpl implements IJobInviteService 
{
    @Autowired
    private JobInviteMapper jobInviteMapper;
    @Autowired
    private DictDataMapper dictDataMapper;

    /**
     * 查询面试邀请
     * 
     * @param inviteId 面试邀请ID
     * @return 面试邀请
     */
    @Override
    public JobInvite selectJobInviteById(Long inviteId)
    {
        return jobInviteMapper.selectJobInviteById(inviteId);
    }

    /**
     * 查询面试邀请列表
     * 
     * @param jobInvite 面试邀请
     * @return 面试邀请
     */
    @Override
    public List<JobInvite> selectJobInviteList(JobInvite jobInvite)
    {
        return jobInviteMapper.selectJobInviteList(jobInvite);
    }

    /**
     * 新增面试邀请
     * 
     * @param jobInvite 面试邀请
     * @return 结果
     */
    @Override
    public int insertJobInvite(JobInvite jobInvite)
    {
        jobInvite.setUserId(ShiroUtils.getUserId());
        jobInvite.setInviteTime(new Date());
        return jobInviteMapper.insertJobInvite(jobInvite);
    }

    /**
     * 修改面试邀请
     * 
     * @param jobInvite 面试邀请
     * @return 结果
     */
    @Override
    public int updateJobInvite(JobInvite jobInvite)
    {
        return jobInviteMapper.updateJobInvite(jobInvite);
    }

    /**
     * 删除面试邀请对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteJobInviteByIds(String ids)
    {
        return jobInviteMapper.deleteJobInviteByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除面试邀请信息
     * 
     * @param inviteId 面试邀请ID
     * @return 结果
     */
    @Override
    public int deleteJobInviteById(Long inviteId)
    {
        return jobInviteMapper.deleteJobInviteById(inviteId);
    }

    @Override
    public InviteVO selectJobInvite(Long inviteId) {
        InviteVO inviteVO = jobInviteMapper.selectJobInvite(inviteId);
        // 未处理不显示结果和理由
        if ("0".equals(inviteVO.getOperateStatus())) {
            inviteVO.setHiddenResult(true);
            inviteVO.setHiddenReason(true);
        }
        inviteVO.setOperateStatus(dictDataMapper.selectDictLabel("job_operate_status", inviteVO.getOperateStatus()));
        if (inviteVO.getOperateResult() != null) {
            // 处理结果同意时显示处理结果不显示理由
            if ("0".equals(inviteVO.getOperateResult())) {
                inviteVO.setHiddenResult(false);
                inviteVO.setHiddenReason(true);
            } else {
                // 处理结果不同意时显示处理结果和理由
                inviteVO.setHiddenResult(false);
                inviteVO.setHiddenReason(false);
            }
            inviteVO.setOperateResult(dictDataMapper.selectDictLabel("job_operate_result", inviteVO.getOperateResult()));
        }
        return inviteVO;
    }

    @Override
    public int changeStatusById(JobInvite jobInvite) {
        jobInvite.setOperateStatus(1);
        jobInvite.setOperateTime(new Date());
        return jobInviteMapper.updateJobInvite(jobInvite);
    }
}
