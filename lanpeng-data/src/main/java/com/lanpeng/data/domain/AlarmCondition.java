package com.lanpeng.data.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.lanpeng.common.core.domain.BaseEntity;
import java.util.Date;

public class AlarmCondition extends BaseEntity
{
    // 告警状态；0活动；1已确认；2已消除；3已关闭
    private String status;

    // 告警等级
    private Integer level;

    // 筛选开始时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    // 筛选结束时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date stopTime;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getStopTime() {
        return stopTime;
    }

    public void setStopTime(Date stopTime) {
        this.stopTime = stopTime;
    }

    @Override
    public String toString() {
        return "AlarmConditionE{" +
                "status='" + status + '\'' +
                ", level=" + level +
                ", startTime=" + startTime +
                ", stopTime=" + stopTime +
                '}';
    }
}