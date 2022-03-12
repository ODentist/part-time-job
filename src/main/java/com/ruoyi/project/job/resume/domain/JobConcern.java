package com.ruoyi.project.job.resume.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 企业关注对象 job_concern
 *
 * @author
 * @date 2020-02-10
 */
public class JobConcern extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 关注id */
    private Long id;

    /** 企业人员id */
    @Excel(name = "企业人员id")
    private Long userId;

    /** 简历id */
    @Excel(name = "简历id")
    private Long resumeId;

    /** 关注时间 */
    @Excel(name = "关注时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date concernTime;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
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
    public void setConcernTime(Date concernTime)
    {
        this.concernTime = concernTime;
    }

    public Date getConcernTime()
    {
        return concernTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("userId", getUserId())
                .append("resumeId", getResumeId())
                .append("concernTime", getConcernTime())
                .toString();
    }
}
