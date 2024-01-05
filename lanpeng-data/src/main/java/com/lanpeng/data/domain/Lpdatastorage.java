package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * 数据存储对象 lpdatastorage
 * 
 * @author liw
 * @date 2024-01-04
 */
public class Lpdatastorage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 数据存储名称 */
    @Excel(name = "数据存储名称")
    private String name;

    /** 组件编号 */
    @Excel(name = "组件编号")
    private Long moduleInfoId;

    /** 组件名称 */
    @Excel(name = "组件名称")
    private String moduleInfoName;

    /** 组件标识符 */
    @Excel(name = "组件标识符")
    private String code;

    /** 组件类型 */
    @Excel(name = "组件类型")
    private String type;

    /** 数据库连接编号 */
    @Excel(name = "数据库连接编号")
    private Long dbConnectionId;

    /** 数据库连接名称 */
    @Excel(name = "数据库连接名称")
    private String dbConnectionName;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 删除标记 */
    private String delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setModuleInfoId(Long moduleInfoId) 
    {
        this.moduleInfoId = moduleInfoId;
    }

    public Long getModuleInfoId() 
    {
        return moduleInfoId;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setDbConnectionId(Long dbConnectionId) 
    {
        this.dbConnectionId = dbConnectionId;
    }

    public Long getDbConnectionId() 
    {
        return dbConnectionId;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public String getModuleInfoName() {
        return moduleInfoName;
    }

    public void setModuleInfoName(String moduleInfoName) {
        this.moduleInfoName = moduleInfoName;
    }

    public String getDbConnectionName() {
        return dbConnectionName;
    }

    public void setDbConnectionName(String dbConnectionName) {
        this.dbConnectionName = dbConnectionName;
    }

    @Override
    public String toString() {
        return "Lpdatastorage{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", moduleInfoId=" + moduleInfoId +
                ", moduleInfoName='" + moduleInfoName + '\'' +
                ", code='" + code + '\'' +
                ", type='" + type + '\'' +
                ", dbConnectionId=" + dbConnectionId +
                ", dbConnectionName='" + dbConnectionName + '\'' +
                ", description='" + description + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}
