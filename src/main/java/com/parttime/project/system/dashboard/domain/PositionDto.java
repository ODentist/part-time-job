package com.parttime.project.system.dashboard.domain;

/**
 * 招聘信息类
 */
public class PositionDto {
    /**
     * 岗位名字
     */
    private String name;

    /**
     * 岗位薪水
     */
    private int salary;

    public PositionDto() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }
}
