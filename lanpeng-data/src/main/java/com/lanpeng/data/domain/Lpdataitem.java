package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * 数据项对象 lpdataitem
 * 
 * @author liw
 * @date 2024-01-04
 */
public class Lpdataitem extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
    private Long id;

    /** 标识 */
    @Excel(name = "标识")
    private String code;

    /** 名称 */
    @Excel(name = "名称")
    private String dataName;

    /** 数据类型 */
    @Excel(name = "数据类型")
    private Long dataType;

    /** 数据精度 */
    @Excel(name = "数据精度")
    private Integer dataPrecision;

    /** 单位 */
    @Excel(name = "单位")
    private String unit;

    /** 节点类型 */
    @Excel(name = "节点类型")
    private Integer nodeType;

    /** 节点类型名称 */
    @Excel(name = "节点类型名称")
    private Integer nodeTypeName;

    /** 节点ID */
    @Excel(name = "节点ID")
    private Long nodeId;

    /** 节点名称 */
    @Excel(name = "节点名称")
    private Long nodeName;

    /** 对应字段 */
    @Excel(name = "对应字段")
    private String mappingField;

    /** 是否存储（0不存储 1存储） */
    @Excel(name = "是否存储", readConverterExp = "0=不存储,1=存储")
    private String storeFlag;

    /** 是否传输（0不传输 1传输） */
    @Excel(name = "是否传输", readConverterExp = "0=不传输,1=传输")
    private String transferFlag;

    /** 是否展示（0不展示 1展示） */
    @Excel(name = "是否展示", readConverterExp = "0=不展示,1=展示")
    private String displayFlag;

    /** 是否控制（0不控制 1控制） */
    @Excel(name = "是否控制", readConverterExp = "0=不控制,1=控制")
    private String controlFlag;

    /** 是否告警（0不告警 1告警） */
    @Excel(name = "是否告警", readConverterExp = "0=不告警,1=告警")
    private String alarmFlag;

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
    public void setDataName(String dataName) 
    {
        this.dataName = dataName;
    }

    public String getDataName() 
    {
        return dataName;
    }
    public void setDataType(Long dataType) 
    {
        this.dataType = dataType;
    }

    public Long getDataType() 
    {
        return dataType;
    }
    public void setDataPrecision(Integer dataPrecision) 
    {
        this.dataPrecision = dataPrecision;
    }

    public Integer getDataPrecision() 
    {
        return dataPrecision;
    }
    public void setUnit(String unit) 
    {
        this.unit = unit;
    }

    public String getUnit() 
    {
        return unit;
    }
    public void setNodeType(Integer nodeType) 
    {
        this.nodeType = nodeType;
    }

    public Integer getNodeType() 
    {
        return nodeType;
    }
    public void setNodeId(Long nodeId) 
    {
        this.nodeId = nodeId;
    }

    public Long getNodeId() 
    {
        return nodeId;
    }
    public void setMappingField(String mappingField) 
    {
        this.mappingField = mappingField;
    }

    public String getMappingField() 
    {
        return mappingField;
    }
    public void setStoreFlag(String storeFlag) 
    {
        this.storeFlag = storeFlag;
    }

    public String getStoreFlag() 
    {
        return storeFlag;
    }
    public void setTransferFlag(String transferFlag) 
    {
        this.transferFlag = transferFlag;
    }

    public String getTransferFlag() 
    {
        return transferFlag;
    }
    public void setDisplayFlag(String displayFlag) 
    {
        this.displayFlag = displayFlag;
    }

    public String getDisplayFlag() 
    {
        return displayFlag;
    }
    public void setControlFlag(String controlFlag) 
    {
        this.controlFlag = controlFlag;
    }

    public String getControlFlag() 
    {
        return controlFlag;
    }
    public void setAlarmFlag(String alarmFlag) 
    {
        this.alarmFlag = alarmFlag;
    }

    public String getAlarmFlag() 
    {
        return alarmFlag;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    public Integer getNodeTypeName() {
        return nodeTypeName;
    }

    public void setNodeTypeName(Integer nodeTypeName) {
        this.nodeTypeName = nodeTypeName;
    }

    public Long getNodeName() {
        return nodeName;
    }

    public void setNodeName(Long nodeName) {
        this.nodeName = nodeName;
    }

    @Override
    public String toString() {
        return "Lpdataitem{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", dataName='" + dataName + '\'' +
                ", dataType=" + dataType +
                ", dataPrecision=" + dataPrecision +
                ", unit='" + unit + '\'' +
                ", nodeType=" + nodeType +
                ", nodeTypeName=" + nodeTypeName +
                ", nodeId=" + nodeId +
                ", nodeName=" + nodeName +
                ", mappingField='" + mappingField + '\'' +
                ", storeFlag='" + storeFlag + '\'' +
                ", transferFlag='" + transferFlag + '\'' +
                ", displayFlag='" + displayFlag + '\'' +
                ", controlFlag='" + controlFlag + '\'' +
                ", alarmFlag='" + alarmFlag + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}
