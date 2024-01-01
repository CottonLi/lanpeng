package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据库连接类型表 dbconnectiontype
 *
 * @author liw
 */
public class DBConnectionTypeE extends BaseEntity
{
    // 数据库连接类型编号
    private Long id;

    // 数据库连接类型名称
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
        return "DBConnectionTypeE{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}