package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 组件表 module
 *
 * @author liw
 */
public class ModuleE extends BaseEntity
{
    // 组件编号
    private Long id;

    /** 组件名称 */
    private String name;

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

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "ModuleE{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}