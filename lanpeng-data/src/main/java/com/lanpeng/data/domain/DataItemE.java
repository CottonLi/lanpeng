package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据项表 dataitem
 *
 * @author liw
 */
public class DataItemE extends BaseEntity
{
    // 数据编号
    private Long id;

    private ModuleE module;

    // 数据编码
    private String code;

    // 数据名称
    private String name;

    // 数据类型
    private Integer type;

    // 是否显示
    private Boolean displayed;

    // 数据描述
    private String description;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Boolean getDisplayed() {
        return displayed;
    }

    public void setDisplayed(Boolean displayed) {
        this.displayed = displayed;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DataItemE{" +
                "id=" + id +
                ", module=" + module +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", type=" + type +
                ", displayed=" + displayed +
                ", description='" + description + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}