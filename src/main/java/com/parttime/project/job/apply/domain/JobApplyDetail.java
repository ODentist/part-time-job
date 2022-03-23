package com.parttime.project.job.apply.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.parttime.framework.aspectj.lang.annotation.Excel;
import com.parttime.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 职位申请记录对象 job_apply_detail
 * 
 * @author .
 * @date 2020-02-05
 */
public class JobApplyDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 申请Id */
    private Long applyId;

    /** 求职者id（发送简历的userid） */
    @Excel(name = "求职者id", readConverterExp = "发=送简历的userid")
    private Long userId;

    /** 企业id(职位的userid) */
    @Excel(name = "企业id(职位的userid)")
    private Long enterpriseId;

    /** 职位id */
    @Excel(name = "职位id")
    private Long positionId;

    /** 简历id */
    @Excel(name = "简历id")
    private Long resumeId;

    /** 申请时间 */
    @Excel(name = "申请时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date applyTime;

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
    public void setEnterpriseId(Long enterpriseId) 
    {
        this.enterpriseId = enterpriseId;
    }

    public Long getEnterpriseId() 
    {
        return enterpriseId;
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
    public void setApplyTime(Date applyTime) 
    {
        this.applyTime = applyTime;
    }

    public Date getApplyTime() 
    {
        return applyTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("applyId", getApplyId())
            .append("userId", getUserId())
            .append("enterpriseId", getEnterpriseId())
            .append("positionId", getPositionId())
            .append("resumeId", getResumeId())
            .append("applyTime", getApplyTime())
            .toString();
    }
}
