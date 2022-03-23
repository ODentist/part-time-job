package com.parttime.project.job.position.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.parttime.framework.aspectj.lang.annotation.Excel;
import com.parttime.framework.web.domain.BaseEntity;

/**
 * 职位对象 job_position
 * 
 * @author .
 * @date 2020-02-05
 */
public class JobPosition extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long positionId;

    /** 企业id */
    @Excel(name = "企业id")
    private Long userId;

    /** 职位名称 */
    @Excel(name = "职位名称")
    private String positionName;

    /** 职位类型 */
    @Excel(name = "职位类型")
    private Integer positionType;

    /** 工作地点 */
    @Excel(name = "工作地点")
    private String area;

    /** null */
    @Excel(name = "薪资")
    private Integer positionSalary;

    /** 状态 */
    @Excel(name = "状态")
    private Integer status;

    /**
     * 投递情况(0未投递1已投递)
     */
    private Integer deliveryStatus;

    /**
     * 按钮是否显示
     */
    private Boolean view;

    /**
     * 企业Id
     */
    private Long enterpriseId;
    /**
     * 企业名称
     */
    private String name;

    public void setPositionId(Long positionId) 
    {
        this.positionId = positionId;
    }

    public Long getPositionId() 
    {
        return positionId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setPositionName(String positionName) 
    {
        this.positionName = positionName;
    }

    public String getPositionName() 
    {
        return positionName;
    }
    public void setPositionType(Integer positionType) 
    {
        this.positionType = positionType;
    }

    public Integer getPositionType() 
    {
        return positionType;
    }
    public void setArea(String area) 
    {
        this.area = area;
    }

    public String getArea() 
    {
        return area;
    }
    public void setPositionSalary(Integer positionSalary) 
    {
        this.positionSalary = positionSalary;
    }

    public Integer getPositionSalary() 
    {
        return positionSalary;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    public Integer getDeliveryStatus() {
        return deliveryStatus;
    }

    public void setDeliveryStatus(Integer deliveryStatus) {
        this.deliveryStatus = deliveryStatus;
    }

    public Boolean getView() {
        return view;
    }

    public void setView(Boolean view) {
        this.view = view;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getEnterpriseId() {
        return enterpriseId;
    }

    public void setEnterpriseId(Long enterpriseId) {
        this.enterpriseId = enterpriseId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("positionId", getPositionId())
            .append("userId", getUserId())
            .append("positionName", getPositionName())
            .append("positionType", getPositionType())
            .append("area", getArea())
            .append("positionSalary", getPositionSalary())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
