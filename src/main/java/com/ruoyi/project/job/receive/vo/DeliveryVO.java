package com.ruoyi.project.job.receive.vo;

import java.io.Serializable;

public class DeliveryVO implements Serializable {

    /**
     * 职位名称
     */
    private String positionName;

    /**
     * 简历名称
     */
    private String resumeName;

    /**
     * 处理状态
     */
    private String operateStatus;

    /**
     * 处理结果
     */
    private String operateResult;

    private Boolean hiddenResult;

    /**
     * 拒绝理由
     */
    private String reason;

    private Boolean hiddenReason;

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName;
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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
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
}
