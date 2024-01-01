package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 数据存储表 datastorage
 *
 * @author liw
 */
public class DataStorageE extends BaseEntity
{
    private Long id;

    private String name;

    private ModuleE module;

    private String code;

    private String type;

    private DBConnectionE dbconnection;

    private String description;

    private List<DataStorageItemE> items;

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

    public ModuleE getModule() {
        return module;
    }

    public void setModule(ModuleE module) {
        this.module = module;
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

    public DBConnectionE getDbconnection() {
        return dbconnection;
    }

    public void setDbconnection(DBConnectionE dbconnection) {
        this.dbconnection = dbconnection;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<DataStorageItemE> getItems() {
        return items;
    }

    public void setItems(List<DataStorageItemE> items) {
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
        return "DataStorageE{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", module=" + module +
                ", code='" + code + '\'' +
                ", type='" + type + '\'' +
                ", dbconnection=" + dbconnection +
                ", description='" + description + '\'' +
                ", items=" + items +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}