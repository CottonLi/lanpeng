package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据存储条目表 datastorageitem
 *
 * @author liw
 */
public class DataStorageItem extends BaseEntity
{
    // 数据存储项编号
    private Long id;

    // 所属数据存储编号
    private Integer dataStorageId;

    // 数据条目
    private DataItem dataItem;

    private Integer dataItemId;

    // 对应数据库表
    private String tableName;

    // 对应数据库表里字段
    private String columnName;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getDataStorageId() {
        return dataStorageId;
    }

    public void setDataStorageId(Integer dataStorageId) {
        this.dataStorageId = dataStorageId;
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

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DataStorageItem{" +
                "id=" + id +
                ", dataStorageId=" + dataStorageId +
                ", dataItem=" + dataItem +
                ", dataItemId=" + dataItemId +
                ", tableName='" + tableName + '\'' +
                ", columnName='" + columnName + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}