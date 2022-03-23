package com.parttime.project.system.dashboard.domain;

import java.util.List;

/**
 * 数据大屏返回对象
 */
public class DashboardDto {
    /**
     * 今日企业入驻总人数
     */
    private int todayEnterpriseCounts;

    /**
     * 昨天企业入驻总人数
     */
    private int yesterdayEnterpriseCounts;

    /**
     * 企业今天比昨天同比增长
     */
    private double EnterpriseGrowth;

    /**
     * 今日注册招聘者总人数
     */
    private int todayUserCounts;

    /**
     * 昨天注册招聘者总人数
     */
    private int yesterdayUserCounts;

    /**
     * 招聘者今天比昨天同比增长
     */
    private double UserGrowth;

    /**
     * 入驻的总企业数
     */
    private int allEnterpriseCounts;

    /**
     *  注册的招聘者总人数
     */
    private int allUserCounts;

    /**
     * 注册的男求职者人数
     */
    private int manUser;

    /**
     * 注册的女求职者人数
     */
    private int womanUser;

    public int getManUser() {
        return manUser;
    }

    public void setManUser(int manUser) {
        this.manUser = manUser;
    }

    public int getWomanUser() {
        return womanUser;
    }

    public void setWomanUser(int womanUser) {
        this.womanUser = womanUser;
    }

    /**
     * 行业招聘信息
     */
    private List<IndustryDto> industryList;

    /**
     * 新增企业信息列表
     */
    private List<EnterpriseDto> enterpriseList;

    /**
     * 新增岗位信息列表
     */
    private List<PositionDto> positionList;

    public DashboardDto() {
    }

    public int getTodayEnterpriseCounts() {
        return todayEnterpriseCounts;
    }

    public void setTodayEnterpriseCounts(int todayEnterpriseCounts) {
        this.todayEnterpriseCounts = todayEnterpriseCounts;
    }

    public int getYesterdayEnterpriseCounts() {
        return yesterdayEnterpriseCounts;
    }

    public void setYesterdayEnterpriseCounts(int yesterdayEnterpriseCounts) {
        this.yesterdayEnterpriseCounts = yesterdayEnterpriseCounts;
    }

    public double getEnterpriseGrowth() {
        return EnterpriseGrowth;
    }

    public void setEnterpriseGrowth(double enterpriseGrowth) {
        EnterpriseGrowth = enterpriseGrowth;
    }

    public int getTodayUserCounts() {
        return todayUserCounts;
    }

    public void setTodayUserCounts(int todayUserCounts) {
        this.todayUserCounts = todayUserCounts;
    }

    public int getYesterdayUserCounts() {
        return yesterdayUserCounts;
    }

    public void setYesterdayUserCounts(int yesterdayUserCounts) {
        this.yesterdayUserCounts = yesterdayUserCounts;
    }

    public double getUserGrowth() {
        return UserGrowth;
    }

    public void setUserGrowth(double userGrowth) {
        UserGrowth = userGrowth;
    }

    public int getAllEnterpriseCounts() {
        return allEnterpriseCounts;
    }

    public void setAllEnterpriseCounts(int allEnterpriseCounts) {
        this.allEnterpriseCounts = allEnterpriseCounts;
    }

    public int getAllUserCounts() {
        return allUserCounts;
    }

    public void setAllUserCounts(int allUserCounts) {
        this.allUserCounts = allUserCounts;
    }

    public List<IndustryDto> getIndustryList() {
        return industryList;
    }

    public void setIndustryList(List<IndustryDto> industryList) {
        this.industryList = industryList;
    }

    public List<EnterpriseDto> getEnterpriseList() {
        return enterpriseList;
    }

    public void setEnterpriseList(List<EnterpriseDto> enterpriseList) {
        this.enterpriseList = enterpriseList;
    }

    public List<PositionDto> getPositionList() {
        return positionList;
    }

    public void setPositionList(List<PositionDto> positionList) {
        this.positionList = positionList;
    }
}
