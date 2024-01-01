package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 智能控制条目表 IntelligentControlItem
 *
 * @author liw
 */
public class IntelligentControlItemE extends BaseEntity
{
    private Long id;

    // 所属数据存储编号
    private Integer intelligentControlId;

    // 数据条目，这里面有标识符和类型
    private DataItemE dataItem;

    // 数据条目所使用的长度
    private Integer length;

    // 对应数据库表里字段
    private String description;

    private String interfaceParameter;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getIntelligentControlId() {
        return intelligentControlId;
    }

    public void setIntelligentControlId(Integer intelligentControlId) {
        this.intelligentControlId = intelligentControlId;
    }

    public DataItemE getDataItem() {
        return dataItem;
    }

    public void setDataItem(DataItemE dataItem) {
        this.dataItem = dataItem;
    }

    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInterfaceParameter() {
        return interfaceParameter;
    }

    public void setInterfaceParameter(String interfaceParameter) {
        this.interfaceParameter = interfaceParameter;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "IntelligentControlItemE{" +
                "id=" + id +
                ", intelligentControlId=" + intelligentControlId +
                ", dataItem=" + dataItem +
                ", length=" + length +
                ", description='" + description + '\'' +
                ", interfaceParameter='" + interfaceParameter + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}