package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 数据存储表 datastorage
 *
 * @author liw
 */
public class DataStorage extends BaseEntity
{
    private Long id;

    private String name;

    private ModuleInfo moduleInfo;

    private Integer moduleInfoId;

    private String code;

    private String type;

    private DBConnection dbconnection;

    private Integer dbConnectionId;

    private String description;

    private List<DataStorageItem> items;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ModuleInfo getModuleInfo() {
        return moduleInfo;
    }

    public void setModuleInfo(ModuleInfo moduleInfo) {
        this.moduleInfo = moduleInfo;
    }

    public Integer getModuleInfoId() {
        return moduleInfoId;
    }

    public void setModuleInfoId(Integer moduleInfoId) {
        this.moduleInfoId = moduleInfoId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public DBConnection getDbconnection() {
        return dbconnection;
    }

    public void setDbconnection(DBConnection dbconnection) {
        this.dbconnection = dbconnection;
    }

    public Integer getDbConnectionId() {
        return dbConnectionId;
    }

    public void setDbConnectionId(Integer dbConnectionId) {
        this.dbConnectionId = dbConnectionId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<DataStorageItem> getItems() {
        return items;
    }

    public void setItems(List<DataStorageItem> items) {
        this.items = items;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DataStorage{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", moduleInfo=" + moduleInfo +
                ", moduleInfoId=" + moduleInfoId +
                ", code='" + code + '\'' +
                ", type='" + type + '\'' +
                ", dbconnection=" + dbconnection +
                ", dbConnectionId=" + dbConnectionId +
                ", description='" + description + '\'' +
                ", items=" + items +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}