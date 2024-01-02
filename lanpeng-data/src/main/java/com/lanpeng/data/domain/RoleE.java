package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 角色表（我自己用的，就用俩字段，系统还有一个！） role
 *
 * @author liw
 */
public class RoleE extends BaseEntity
{
    // 角色编号
    private Long id;

    /** 角色名称 */
    private String name;

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

    @Override
    public String toString() {
        return "RoleE{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}