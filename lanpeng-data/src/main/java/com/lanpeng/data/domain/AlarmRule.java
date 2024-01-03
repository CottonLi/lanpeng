package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 告警规则表 alarmrule
 *
 * @author liw
 */
public class AlarmRule extends BaseEntity
{
    // 告警规则ID
    private Long id;

    // 告警规则标识符
    private String code;

    // 告警规则版本，初始是1
    private Integer version;

    // 告警规则所选择的数据项
    private DataItem dataItem;

    private Integer dataItemId;

    // 告警规则所选择的数据项标识符（提到外面来，不会随着数据项改变而改变,方便显示）
    private String dataItemCode;

    // 告警规则所选择的数据项类型
    private String dataItemType;

    // 告警规则：操作符
    private String operator;

    // 告警规则：第一个操作数
    private float operator1;

    // 告警规则：第二个操作数
    private float operator2;

    // 告警规则：连续多少个确认是告警
    private Integer continuousTime;

    // 告警规则级别--应该是用来确认告警级别
    private Integer level;

    // 告警规则描述
    private String description;

    /** 状态（0有效 1无效） */
    private String status;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public DataItem getDataItem() {
        return dataItem;
    }

    public void setDataItem(DataItem dataItem) {
        this.dataItem = dataItem;
    }

    public Integer getDataItemId() {
        return dataItemId;
    }

    public void setDataItemId(Integer dataItemId) {
        this.dataItemId = dataItemId;
    }

    public String getDataItemCode() {
        return dataItemCode;
    }

    public void setDataItemCode(String dataItemCode) {
        this.dataItemCode = dataItemCode;
    }

    public String getDataItemType() {
        return dataItemType;
    }

    public void setDataItemType(String dataItemType) {
        this.dataItemType = dataItemType;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public float getOperator1() {
        return operator1;
    }

    public void setOperator1(float operator1) {
        this.operator1 = operator1;
    }

    public float getOperator2() {
        return operator2;
    }

    public void setOperator2(float operator2) {
        this.operator2 = operator2;
    }

    public Integer getContinuousTime() {
        return continuousTime;
    }

    public void setContinuousTime(Integer continuousTime) {
        this.continuousTime = continuousTime;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "AlarmRule{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", version=" + version +
                ", dataItem=" + dataItem +
                ", dataItemId=" + dataItemId +
                ", dataItemCode='" + dataItemCode + '\'' +
                ", dataItemType='" + dataItemType + '\'' +
                ", operator='" + operator + '\'' +
                ", operator1=" + operator1 +
                ", operator2=" + operator2 +
                ", continuousTime=" + continuousTime +
                ", level=" + level +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}