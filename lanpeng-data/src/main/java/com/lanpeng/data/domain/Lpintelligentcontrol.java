package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * 智能控制对象 lpintelligentcontrol
 * 
 * @author liw
 * @date 2024-01-05
 */
public class Lpintelligentcontrol extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 智能控制名称 */
    @Excel(name = "智能控制名称")
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

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 详细配置参数 */
    @Excel(name = "详细配置参数")
    private String parameter;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
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
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setParameter(String parameter) 
    {
        this.parameter = parameter;
    }

    public String getParameter() 
    {
        return parameter;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public Long getModuleInfoId() {
        return moduleInfoId;
    }

    public void setModuleInfoId(Long moduleInfoId) {
        this.moduleInfoId = moduleInfoId;
    }

    public String getModuleInfoName() {
        return moduleInfoName;
    }

    public void setModuleInfoName(String moduleInfoName) {
        this.moduleInfoName = moduleInfoName;
    }

    @Override
    public String toString() {
        return "Lpintelligentcontrol{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", moduleInfoId=" + moduleInfoId +
                ", moduleInfoName='" + moduleInfoName + '\'' +
                ", code='" + code + '\'' +
                ", type='" + type + '\'' +
                ", description='" + description + '\'' +
                ", parameter='" + parameter + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}
