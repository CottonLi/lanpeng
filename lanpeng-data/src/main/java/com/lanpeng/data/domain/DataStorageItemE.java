package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据存储条目表 datastorageitem
 *
 * @author liw
 */
public class DataStorageItemE extends BaseEntity
{
    // 数据存储项编号
    private Long id;

    // 所属数据存储编号
    private Integer dataStorageId;

    // 数据条目
    private DataItemE dataItem;

    // 对应数据库表
    private String table;

    // 对应数据库表里字段
    private String column;

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

    public DataItemE getDataItem() {
        return dataItem;
    }

    public void setDataItem(DataItemE dataItem) {
        this.dataItem = dataItem;
    }

    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }

    public String getColumn() {
        return column;
    }

    public void setColumn(String column) {
        this.column = column;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DataStorageItemE{" +
                "id=" + id +
                ", dataStorageId=" + dataStorageId +
                ", dataItem=" + dataItem +
                ", table='" + table + '\'' +
                ", column='" + column + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}