package com.parttime.project.job.invite.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.parttime.framework.aspectj.lang.annotation.Excel;
import com.parttime.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 面试邀请对象 job_invite
 * 
 * @author .
 * @date 2020-02-10
 */
public class JobInvite extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 邀请id */
    private Long inviteId;

    /** 企业人员Id */
    @Excel(name = "企业人员Id")
    private Long userId;

    /** 简历id */
    @Excel(name = "简历id")
    private Long resumeId;

    /** 邀请时间 */
    @Excel(name = "邀请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date inviteTime;

    /** 面试时间 */
    @Excel(name = "面试时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date interviewTime;

    /** 面试地点 */
    @Excel(name = "面试地点")
    private String interviewPlace;

    /** 处理状态(0未处理，1已处理) */
    @Excel(name = "处理状态(0未处理，1已处理)")
    private Integer operateStatus;

    /** 处理结果(0同意1拒绝) */
    @Excel(name = "处理结果(0同意1拒绝)")
    private Integer operateResult;

    /** 拒绝原因 */
    @Excel(name = "拒绝原因")
    private String reason;

    /** 处理时间 */
    @Excel(name = "处理时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date operateTime;

    public void setInviteId(Long inviteId) 
    {
        this.inviteId = inviteId;
    }

    public Long getInviteId() 
    {
        return inviteId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setResumeId(Long resumeId) 
    {
        this.resumeId = resumeId;
    }

    public Long getResumeId() 
    {
        return resumeId;
    }
    public void setInviteTime(Date inviteTime) 
    {
        this.inviteTime = inviteTime;
    }

    public Date getInviteTime() 
    {
        return inviteTime;
    }
    public void setInterviewTime(Date interviewTime) 
    {
        this.interviewTime = interviewTime;
    }

    public Date getInterviewTime() 
    {
        return interviewTime;
    }
    public void setInterviewPlace(String interviewPlace) 
    {
        this.interviewPlace = interviewPlace;
    }

    public String getInterviewPlace() 
    {
        return interviewPlace;
    }
    public void setOperateStatus(Integer operateStatus) 
    {
        this.operateStatus = operateStatus;
    }

    public Integer getOperateStatus() 
    {
        return operateStatus;
    }
    public void setOperateResult(Integer operateResult) 
    {
        this.operateResult = operateResult;
    }

    public Integer getOperateResult() 
    {
        return operateResult;
    }
    public void setReason(String reason) 
    {
        this.reason = reason;
    }

    public String getReason() 
    {
        return reason;
    }
    public void setOperateTime(Date operateTime) 
    {
        this.operateTime = operateTime;
    }

    public Date getOperateTime() 
    {
        return operateTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("inviteId", getInviteId())
            .append("userId", getUserId())
            .append("resumeId", getResumeId())
            .append("inviteTime", getInviteTime())
            .append("interviewTime", getInterviewTime())
            .append("interviewPlace", getInterviewPlace())
            .append("operateStatus", getOperateStatus())
            .append("operateResult", getOperateResult())
            .append("reason", getReason())
            .append("operateTime", getOperateTime())
            .toString();
    }
}
