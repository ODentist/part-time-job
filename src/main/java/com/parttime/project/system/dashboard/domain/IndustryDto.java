package com.parttime.project.system.dashboard.domain;

/*
  行业招聘信息类
 */
public class IndustryDto {
    /**
     * 行业名称
     */
    private String name;

    /**
     * 行业招聘总数
     */
    private int count;

    public IndustryDto() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }


}
