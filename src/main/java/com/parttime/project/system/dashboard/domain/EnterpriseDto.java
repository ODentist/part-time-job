package com.parttime.project.system.dashboard.domain;

/**
 *  简单展示企业信息类
 */
public class EnterpriseDto {
    /**
     * 企业名字
     */
    private String name;

    /**
     * 企业地址
     */
    private String address;

    public EnterpriseDto() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
