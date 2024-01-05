package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * 智能控制项对象 lpintelligentcontrolitem
 * 
 * @author liw
 * @date 2024-01-05
 */
public class Lpintelligentcontrolitem extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 智能控制编号 */
    @Excel(name = "智能控制编号")
    private Long intelligentControlId;

    /** 智能控制名称 */
    @Excel(name = "智能控制名称")
    private String intelligentControlName;

    /** 数据项编号 */
    @Excel(name = "数据项编号")
    private Long dataItemId;

    /** 数据项名称 */
    @Excel(name = "数据项名称")
    private String dataItemName;

    /** 长度 */
    @Excel(name = "长度")
    private Long length;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    /** 接口参数名字 */
    @Excel(name = "接口参数名字")
    private String interfaceParameter;

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
    public void setIntelligentControlId(Long intelligentControlId) 
    {
        this.intelligentControlId = intelligentControlId;
    }

    public Long getIntelligentControlId() 
    {
        return intelligentControlId;
    }
    public void setDataItemId(Long dataItemId) 
    {
        this.dataItemId = dataItemId;
    }

    public Long getDataItemId() 
    {
        return dataItemId;
    }
    public void setLength(Long length) 
    {
        this.length = length;
    }

    public Long getLength() 
    {
        return length;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }
    public void setInterfaceParameter(String interfaceParameter) 
    {
        this.interfaceParameter = interfaceParameter;
    }

    public String getInterfaceParameter() 
    {
        return interfaceParameter;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public String getIntelligentControlName() {
        return intelligentControlName;
    }

    public void setIntelligentControlName(String intelligentControlName) {
        this.intelligentControlName = intelligentControlName;
    }

    public String getDataItemName() {
        return dataItemName;
    }

    public void setDataItemName(String dataItemName) {
        this.dataItemName = dataItemName;
    }

    @Override
    public String toString() {
        return "Lpintelligentcontrolitem{" +
                "id=" + id +
                ", intelligentControlId=" + intelligentControlId +
                ", intelligentControlName=" + intelligentControlName +
                ", dataItemId=" + dataItemId +
                ", dataItemName='" + dataItemName + '\'' +
                ", length=" + length +
                ", description='" + description + '\'' +
                ", interfaceParameter='" + interfaceParameter + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}
