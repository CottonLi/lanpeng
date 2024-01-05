package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * 数据存储项对象 lpdatastorageitem
 * 
 * @author liw
 * @date 2024-01-04
 */
public class Lpdatastorageitem extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 数据存储编号 */
    @Excel(name = "数据存储编号")
    private Long dataStorageId;

    /** 数据存储名称 */
    @Excel(name = "数据存储名称")
    private String dataStorageName;

    /** 数据项编号 */
    @Excel(name = "数据项编号")
    private Long dataItemId;

    /** 数据项名称 */
    @Excel(name = "数据项名称")
    private String dataItemName;

    /** 数据库表 */
    @Excel(name = "数据库表")
    private String tableName;

    /** 数据库列 */
    @Excel(name = "数据库列")
    private String columnName;

    /** $column.columnComment */
    private String delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDataStorageId(Long dataStorageId) 
    {
        this.dataStorageId = dataStorageId;
    }

    public Long getDataStorageId() 
    {
        return dataStorageId;
    }
    public void setDataItemId(Long dataItemId) 
    {
        this.dataItemId = dataItemId;
    }

    public Long getDataItemId() 
    {
        return dataItemId;
    }
    public void setTableName(String tableName) 
    {
        this.tableName = tableName;
    }

    public String getTableName() 
    {
        return tableName;
    }
    public void setColumnName(String columnName) 
    {
        this.columnName = columnName;
    }

    public String getColumnName() 
    {
        return columnName;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public String getDataItemName() {
        return dataItemName;
    }

    public void setDataItemName(String dataItemName) {
        this.dataItemName = dataItemName;
    }

    public String getDataStorageName() {
        return dataStorageName;
    }

    public void setDataStorageName(String dataStorageName) {
        this.dataStorageName = dataStorageName;
    }

    @Override
    public String toString() {
        return "Lpdatastorageitem{" +
                "id=" + id +
                ", dataStorageId=" + dataStorageId +
                ", dataStorageName='" + dataStorageName + '\'' +
                ", dataItemId=" + dataItemId +
                ", dataItemName='" + dataItemName + '\'' +
                ", tableName='" + tableName + '\'' +
                ", columnName='" + columnName + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}
