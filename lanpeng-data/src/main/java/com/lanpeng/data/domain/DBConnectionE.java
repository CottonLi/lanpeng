package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据库连接表 dbconnection(dbconnectiontype)
 *
 * @author liw
 */
public class DBConnectionE extends BaseEntity
{
    // 数据库连接编号
    private Long id;

    // 数据库连接名称
    private String name;

    // 数据库连接类型编号
    private DBConnectionTypeE dbconnectionType;

    // 数据库服务器名称
    private String serverName;

    // 数据库服务器端口号
    private Integer serverPort;

    // 数据库服务器端口号
    private String database;

    // 数据库连接用户名
    private String userName;

    // 数据库连接密码
    private String password;

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

    public DBConnectionTypeE getDbconnectionType() {
        return dbconnectionType;
    }

    public void setDbconnectionType(DBConnectionTypeE dbconnectionType) {
        this.dbconnectionType = dbconnectionType;
    }

    public String getServerName() {
        return serverName;
    }

    public void setServerName(String serverName) {
        this.serverName = serverName;
    }

    public Integer getServerPort() {
        return serverPort;
    }

    public void setServerPort(Integer serverPort) {
        this.serverPort = serverPort;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DBConnectionE{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", dbconnectionType=" + dbconnectionType +
                ", serverName='" + serverName + '\'' +
                ", serverPort=" + serverPort +
                ", database='" + database + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}