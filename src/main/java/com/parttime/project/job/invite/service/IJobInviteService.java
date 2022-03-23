package com.parttime.project.job.invite.service;

import com.parttime.project.job.invite.domain.JobInvite;
import com.parttime.project.job.invite.vo.InviteVO;

import java.util.List;

/**
 * 面试邀请Service接口
 * 
 * @author .
 * @date 2020-02-10
 */
public interface IJobInviteService 
{
    /**
     * 查询面试邀请
     * 
     * @param inviteId 面试邀请ID
     * @return 面试邀请
     */
    public JobInvite selectJobInviteById(Long inviteId);

    /**
     * 查询面试邀请列表
     * 
     * @param jobInvite 面试邀请
     * @return 面试邀请集合
     */
    public List<JobInvite> selectJobInviteList(JobInvite jobInvite);

    /**
     * 新增面试邀请
     * 
     * @param jobInvite 面试邀请
     * @return 结果
     */
    public int insertJobInvite(JobInvite jobInvite);

    /**
     * 修改面试邀请
     * 
     * @param jobInvite 面试邀请
     * @return 结果
     */
    public int updateJobInvite(JobInvite jobInvite);

    /**
     * 批量删除面试邀请
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteJobInviteByIds(String ids);

    /**
     * 删除面试邀请信息
     * 
     * @param inviteId 面试邀请ID
     * @return 结果
     */
    public int deleteJobInviteById(Long inviteId);

    public InviteVO selectJobInvite(Long inviteId);

    public int changeStatusById(JobInvite jobInvite);
}
