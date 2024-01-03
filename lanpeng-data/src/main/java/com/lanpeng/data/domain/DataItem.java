package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据项表 dataitem
 *
 * @author liw
 */
public class DataItem extends BaseEntity
{
    // 数据项编号
    private Long id;

    // 数据项标识
    private String code;

    // 数据项名称
    private String dataName;

    // 数据项类型
    private Integer dataType;

    // 数据项精度
    private Integer dataPrecision;

    // 数据项单位
    private String unit;

    // 关联的节点类型 1设备；2净化组件；3算法组件
    private Integer nodeType;

    // 设备编号或者组件编号（和节点类型绑定使用）
    private Integer nodeId;

    private String mappingField;

    // 是否存储标记
    private String store_flag;

    // 是否转发标记
    private String transfer_flag;

    // 是否显示标记
    private String display_flag;

    // 是否智能控制标记
    private String control_flag;

    // 是否告警标记
    private String alarm_flag;

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

    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public Integer getDataType() {
        return dataType;
    }

    public void setDataType(Integer dataType) {
        this.dataType = dataType;
    }

    public Integer getDataPrecision() {
        return dataPrecision;
    }

    public void setDataPrecision(Integer dataPrecision) {
        this.dataPrecision = dataPrecision;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Integer getNodeType() {
        return nodeType;
    }

    public void setNodeType(Integer nodeType) {
        this.nodeType = nodeType;
    }

    public Integer getNodeId() {
        return nodeId;
    }

    public void setNodeId(Integer nodeId) {
        this.nodeId = nodeId;
    }

    public String getMappingField() {
        return mappingField;
    }

    public void setMappingField(String mappingField) {
        this.mappingField = mappingField;
    }

    public String getStore_flag() {
        return store_flag;
    }

    public void setStore_flag(String store_flag) {
        this.store_flag = store_flag;
    }

    public String getTransfer_flag() {
        return transfer_flag;
    }

    public void setTransfer_flag(String transfer_flag) {
        this.transfer_flag = transfer_flag;
    }

    public String getDisplay_flag() {
        return display_flag;
    }

    public void setDisplay_flag(String display_flag) {
        this.display_flag = display_flag;
    }

    public String getControl_flag() {
        return control_flag;
    }

    public void setControl_flag(String control_flag) {
        this.control_flag = control_flag;
    }

    public String getAlarm_flag() {
        return alarm_flag;
    }

    public void setAlarm_flag(String alarm_flag) {
        this.alarm_flag = alarm_flag;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DataItemE{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", dataName='" + dataName + '\'' +
                ", dataType=" + dataType +
                ", dataPrecision=" + dataPrecision +
                ", unit='" + unit + '\'' +
                ", nodeType=" + nodeType +
                ", nodeId=" + nodeId +
                ", mappingField='" + mappingField + '\'' +
                ", store_flag='" + store_flag + '\'' +
                ", transfer_flag='" + transfer_flag + '\'' +
                ", display_flag='" + display_flag + '\'' +
                ", control_flag='" + control_flag + '\'' +
                ", alarm_flag='" + alarm_flag + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}