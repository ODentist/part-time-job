package com.parttime.project.job.invite.vo;

import java.io.Serializable;
import java.util.Date;

public class InviteVO implements Serializable {

    // 企业id
    private Long enterpriseId;

    // 企业名称
    private String enterpriseName;

    /** 邀请id */
    private Long inviteId;

    /** 简历id */
    private Long resumeId;

    // 简历名称
    private String resumeName;

    // 求职者
    private String userName;

    /** 邀请时间 */
    private Date inviteTime;

    /** 面试时间 */
    private Date interviewTime;

    /** 面试地点 */
    private String interviewPlace;

    private Boolean hiddenResult;

    private String operateStatus;

    /**
     * 处理结果
     */
    private String operateResult;

    private Boolean hiddenReason;

    /** 拒绝原因 */
    private String reason;

    public Long getInviteId() {
        return inviteId;
    }

    public void setInviteId(Long inviteId) {
        this.inviteId = inviteId;
    }

    public Long getResumeId() {
        return resumeId;
    }

    public void setResumeId(Long resumeId) {
        this.resumeId = resumeId;
    }

    public Date getInviteTime() {
        return inviteTime;
    }

    public void setInviteTime(Date inviteTime) {
        this.inviteTime = inviteTime;
    }

    public Date getInterviewTime() {
        return interviewTime;
    }

    public void setInterviewTime(Date interviewTime) {
        this.interviewTime = interviewTime;
    }

    public String getInterviewPlace() {
        return interviewPlace;
    }

    public void setInterviewPlace(String interviewPlace) {
        this.interviewPlace = interviewPlace;
    }

    public Boolean getHiddenResult() {
        return hiddenResult;
    }

    public void setHiddenResult(Boolean hiddenResult) {
        this.hiddenResult = hiddenResult;
    }

    public Boolean getHiddenReason() {
        return hiddenReason;
    }

    public void setHiddenReason(Boolean hiddenReason) {
        this.hiddenReason = hiddenReason;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getOperateStatus() {
        return operateStatus;
    }

    public void setOperateStatus(String operateStatus) {
        this.operateStatus = operateStatus;
    }

    public String getOperateResult() {
        return operateResult;
    }

    public void setOperateResult(String operateResult) {
        this.operateResult = operateResult;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getEnterpriseId() {
        return enterpriseId;
    }

    public void setEnterpriseId(Long enterpriseId) {
        this.enterpriseId = enterpriseId;
    }

    public String getEnterpriseName() {
        return enterpriseName;
    }

    public void setEnterpriseName(String enterpriseName) {
        this.enterpriseName = enterpriseName;
    }
}
