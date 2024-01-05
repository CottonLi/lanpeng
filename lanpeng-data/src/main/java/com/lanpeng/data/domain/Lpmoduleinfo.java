package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * 组件对象 lpmoduleinfo
 * 
 * @author liw
 * @date 2024-01-04
 */
public class Lpmoduleinfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 标识 */
    @Excel(name = "标识")
    private String code;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 型号 */
    @Excel(name = "型号")
    private String model;

    /** 类型 */
    @Excel(name = "类型")
    private Integer type;

    /** 类型名称 */
    @Excel(name = "类型名称")
    private Integer typeName;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 类名 */
    @Excel(name = "类名")
    private String className;

    /** 版本 */
    @Excel(name = "版本")
    private String version;

    /** 程序集名 */
    @Excel(name = "程序集名")
    private String assemblyName;

    /** 配置文件名 */
    @Excel(name = "配置文件名")
    private String configFileName;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setModel(String model) 
    {
        this.model = model;
    }

    public String getModel() 
    {
        return model;
    }
    public void setType(Integer type) 
    {
        this.type = type;
    }

    public Integer getType() 
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
    public void setClassName(String className) 
    {
        this.className = className;
    }

    public String getClassName() 
    {
        return className;
    }
    public void setVersion(String version) 
    {
        this.version = version;
    }

    public String getVersion() 
    {
        return version;
    }
    public void setAssemblyName(String assemblyName) 
    {
        this.assemblyName = assemblyName;
    }

    public String getAssemblyName() 
    {
        return assemblyName;
    }
    public void setConfigFileName(String configFileName) 
    {
        this.configFileName = configFileName;
    }

    public String getConfigFileName() 
    {
        return configFileName;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public Integer getTypeName() {
        return typeName;
    }

    public void setTypeName(Integer typeName) {
        this.typeName = typeName;
    }

    @Override
    public String toString() {
        return "Lpmoduleinfo{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", model='" + model + '\'' +
                ", type=" + type +
                ", typeName=" + typeName +
                ", description='" + description + '\'' +
                ", className='" + className + '\'' +
                ", version='" + version + '\'' +
                ", assemblyName='" + assemblyName + '\'' +
                ", configFileName='" + configFileName + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}
