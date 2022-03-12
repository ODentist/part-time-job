package com.ruoyi.project.job.receive.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 职位接受记录对象 job_receive_detail
 * 
 * @author 。
 * @date 2020-02-05
 */
public class JobReceiveDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 职位接收id */
    private Long receiveId;

    /** 申请id */
    @Excel(name = "申请id")
    private Long applyId;

    /** 企业id */
    @Excel(name = "企业id")
    private Long userId;

    /** 职位id */
    @Excel(name = "职位id")
    private Long positionId;

    /** 简历id */
    @Excel(name = "简历id")
    private Long resumeId;

    /** 接收时间 */
    @Excel(name = "接收时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date receiveTime;

    /** 处理状态(0未处理，1已处理) */
    @Excel(name = "处理状态(0未处理，1已处理)")
    private Integer operateStatus;

    /** 处理结果(0同意1拒绝) */
    @Excel(name = "处理结果(0同意1拒绝)")
    private Integer operateResult;

    /** 拒绝原因 */
    @Excel(name = "拒绝原因")
    private String reason;

    /**
     * 处理时间
     */
    private Date operateTime;

    public void setReceiveId(Long receiveId) 
    {
        this.receiveId = receiveId;
    }

    public Long getReceiveId() 
    {
        return receiveId;
    }
    public void setApplyId(Long applyId) 
    {
        this.applyId = applyId;
    }

    public Long getApplyId() 
    {
        return applyId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setPositionId(Long positionId) 
    {
        this.positionId = positionId;
    }

    public Long getPositionId() 
    {
        return positionId;
    }
    public void setResumeId(Long resumeId) 
    {
        this.resumeId = resumeId;
    }

    public Long getResumeId() 
    {
        return resumeId;
    }
    public void setReceiveTime(Date receiveTime) 
    {
        this.receiveTime = receiveTime;
    }

    public Date getReceiveTime() 
    {
        return receiveTime;
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

    public Date getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(Date operateTime) {
        this.operateTime = operateTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("receiveId", getReceiveId())
            .append("applyId", getApplyId())
            .append("userId", getUserId())
            .append("positionId", getPositionId())
            .append("resumeId", getResumeId())
            .append("receiveTime", getReceiveTime())
            .append("operateStatus", getOperateStatus())
            .append("operateResult", getOperateResult())
            .append("reason", getReason())
            .toString();
    }
}
