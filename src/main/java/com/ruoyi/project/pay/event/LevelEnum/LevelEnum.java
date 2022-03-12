package com.ruoyi.project.pay.event.LevelEnum;

import java.util.Arrays;
import java.util.Optional;

public enum LevelEnum {

    ONE_MONTH(1, 30),

    THREE_MONTH(2, 90),

    SIX_MONTH(3, 180),

    TWELVE_MONTH(4, 360);

    private Integer sort;

    private Integer days;

    LevelEnum(Integer sort, Integer days) {
        this.sort = sort;
        this.days = days;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getDays() {
        return days;
    }

    public void setDays(Integer days) {
        this.days = days;
    }

    public static LevelEnum get(Integer sort){

        return Arrays.stream(values()).filter(s ->s.getSort() == sort).findFirst().get();
    }
}
