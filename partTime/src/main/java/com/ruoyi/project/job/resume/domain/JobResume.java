package com.ruoyi.project.job.resume.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 简历对象 job_resume
 * 
 * @author .
 * @date 2020-02-05
 */
public class JobResume extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 简历id */
    private Long resumeId;

    private String resumeName;

    /** 求职者id */
    @Excel(name = "求职者id")
    private Long userId;

    /** 职位类别 */
    @Excel(name = "职位类别")
    private Integer positionType;

    /** 简历内容 */
    @Excel(name = "简历内容")
    private String content;

    /** 地区 */
    @Excel(name = "地区")
    private String area;

    /** 薪资范围 */
    @Excel(name = "薪资范围")
    private Integer salary;

    /** 生日 */
    @Excel(name = "生日", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date birthday;

    /** 电话 */
    @Excel(name = "电话")
    private String phone;

    /** 工作经历 */
    @Excel(name = "工作经历")
    private String workExperience;

    /** 简历状态 */
    @Excel(name = "简历状态")
    private Integer status;

    private String fileName;

    private String fileCode;

    /** 上传状态 fileCode为空则未上传*/
    private String uploadStatus;
    /**
     * 求职者姓名
     */
    private String name;

    private String startTime;

    private String endTime;

    /**
     * 按钮是否显示
     */
    private Boolean view = false;

    /** 仅显示用 start*/
    private String positionTypeName;

    private String areaName;

    private String salaryName;

    // 该字段说明存在关注记录
    private Long concernId;

    // 该字段说明存在邀请面试记录
    private Long inviteId;
    /** end*/

    public void setResumeId(Long resumeId) 
    {
        this.resumeId = resumeId;
    }

    public Long getResumeId() 
    {
        return resumeId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setPositionType(Integer positionType) 
    {
        this.positionType = positionType;
    }

    public Integer getPositionType() 
    {
        return positionType;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setArea(String area) 
    {
        this.area = area;
    }

    public String getArea() 
    {
        return area;
    }
    public void setSalary(Integer salary) 
    {
        this.salary = salary;
    }

    public Integer getSalary() 
    {
        return salary;
    }
    public void setBirthday(Date birthday) 
    {
        this.birthday = birthday;
    }

    public Date getBirthday() 
    {
        return birthday;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setWorkExperience(String workExperience) 
    {
        this.workExperience = workExperience;
    }

    public String getWorkExperience() 
    {
        return workExperience;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName;
    }

    public Boolean getView() {
        return view;
    }

    public void setView(Boolean view) {
        this.view = view;
    }

    public String getPositionTypeName() {
        return positionTypeName;
    }

    public void setPositionTypeName(String positionTypeName) {
        this.positionTypeName = positionTypeName;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getSalaryName() {
        return salaryName;
    }

    public void setSalaryName(String salaryName) {
        this.salaryName = salaryName;
    }

    public Long getConcernId() {
        return concernId;
    }

    public void setConcernId(Long concernId) {
        this.concernId = concernId;
    }

    public Long getInviteId() {
        return inviteId;
    }

    public void setInviteId(Long inviteId) {
        this.inviteId = inviteId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileCode() {
        return fileCode;
    }

    public void setFileCode(String fileCode) {
        this.fileCode = fileCode;
    }

    public String getUploadStatus() {
        return uploadStatus;
    }

    public void setUploadStatus(String uploadStatus) {
        this.uploadStatus = uploadStatus;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("resumeId", getResumeId())
                .append("resumeName", getResumeName())
            .append("userId", getUserId())
                .append("name", getName())
            .append("positionType", getPositionType())
            .append("content", getContent())
            .append("area", getArea())
            .append("salary", getSalary())
            .append("birthday", getBirthday())
            .append("phone", getPhone())
            .append("workExperience", getWorkExperience())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
