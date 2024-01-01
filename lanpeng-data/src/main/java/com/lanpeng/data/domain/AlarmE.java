package com.lanpeng.data.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.lanpeng.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 告警表 alarm
 *
 * @author liw
 */
public class AlarmE extends BaseEntity
{
    // 告警ID
    private Long id;

    // 告警所从属的报警规则
    private AlarmRuleE alarmRule;

    // 告警所使用的告警规则对应版本，即使规则升级了，这个字段也不会变
    private Integer alarmRuleVersion;

    // 告警对象
    private String object;

    // 告警等级
    private Integer level;

    // 告警内容
    private String content;

    // 告警状态；0活动；1已确认；2已消除；3已关闭
    private String status;

    // 告警发生时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date occurTime;

    // 告警确认人
    private String acknowledgeBy;

    // 告警确认时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date acknowledgeTime;

    // 告警清除人
    private String clearBy;

    // 告警清除时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date clearTime;

    // 告警关闭人
    private String closeBy;

    // 告警关闭时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date closeTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public AlarmRuleE getAlarmRule() {
        return alarmRule;
    }

    public void setAlarmRule(AlarmRuleE alarmRule) {
        this.alarmRule = alarmRule;
    }

    public Integer getAlarmRuleVersion() {
        return alarmRuleVersion;
    }

    public void setAlarmRuleVersion(Integer alarmRuleVersion) {
        this.alarmRuleVersion = alarmRuleVersion;
    }

    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getOccurTime() {
        return occurTime;
    }

    public void setOccurTime(Date occurTime) {
        this.occurTime = occurTime;
    }

    public String getAcknowledgeBy() {
        return acknowledgeBy;
    }

    public void setAcknowledgeBy(String acknowledgeBy) {
        this.acknowledgeBy = acknowledgeBy;
    }

    public Date getAcknowledgeTime() {
        return acknowledgeTime;
    }

    public void setAcknowledgeTime(Date acknowledgeTime) {
        this.acknowledgeTime = acknowledgeTime;
    }

    public String getClearBy() {
        return clearBy;
    }

    public void setClearBy(String clearBy) {
        this.clearBy = clearBy;
    }

    public Date getClearTime() {
        return clearTime;
    }

    public void setClearTime(Date clearTime) {
        this.clearTime = clearTime;
    }

    public String getCloseBy() {
        return closeBy;
    }

    public void setCloseBy(String closeBy) {
        this.closeBy = closeBy;
    }

    public Date getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(Date closeTime) {
        this.closeTime = closeTime;
    }

    @Override
    public String toString() {
        return "AlarmE{" +
                "id=" + id +
                ", alarmRule=" + alarmRule +
                ", alarmRuleVersion=" + alarmRuleVersion +
                ", object='" + object + '\'' +
                ", level=" + level +
                ", content='" + content + '\'' +
                ", status='" + status + '\'' +
                ", occurTime=" + occurTime +
                ", acknowledgeBy='" + acknowledgeBy + '\'' +
                ", acknowledgeTime=" + acknowledgeTime +
                ", clearBy='" + clearBy + '\'' +
                ", clearTime=" + clearTime +
                ", closeBy='" + closeBy + '\'' +
                ", closeTime=" + closeTime +
                '}';
    }
}