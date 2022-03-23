package com.parttime.project.job.enterprise.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.parttime.framework.aspectj.lang.annotation.Excel;
import com.parttime.framework.web.domain.BaseEntity;

/**
 * 企业对象 job_enterprise
 * 
 * @author .
 * @date 2020-02-10
 */
public class JobEnterprise extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 企业Id */
    private Long id;

    /** 企业人员 */
    @Excel(name = "企业人员")
    private Long userId;

    /** 企业名称 */
    @Excel(name = "企业名称")
    private String name;

    /** 企业规模 */
    @Excel(name = "企业规模")
    private Integer scale;

    private String scaleName;

    /** 企业性质 */
    @Excel(name = "企业性质")
    private Integer category;

    private String categoryName;

    /** 企业地址 */
    @Excel(name = "企业地址")
    private String address;

    /** 联系方式 */
    @Excel(name = "联系方式")
    private String phone;

    /** 企业信息 */
    @Excel(name = "企业信息")
    private String information;

    private Long resumeId;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setScale(Integer scale) 
    {
        this.scale = scale;
    }

    public Integer getScale() 
    {
        return scale;
    }
    public void setCategory(Integer category) 
    {
        this.category = category;
    }

    public Integer getCategory() 
    {
        return category;
    }
    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setInformation(String information) 
    {
        this.information = information;
    }

    public String getInformation() 
    {
        return information;
    }

    public String getScaleName() {
        return scaleName;
    }

    public void setScaleName(String scaleName) {
        this.scaleName = scaleName;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Long getResumeId() {
        return resumeId;
    }

    public void setResumeId(Long resumeId) {
        this.resumeId = resumeId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("name", getName())
            .append("scale", getScale())
            .append("category", getCategory())
            .append("address", getAddress())
            .append("phone", getPhone())
            .append("information", getInformation())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
