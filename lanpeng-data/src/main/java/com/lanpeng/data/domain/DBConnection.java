package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;

/**
 * 数据库连接表 dbconnection(dbconnectiontype)
 *
 * @author liw
 */
public class DBConnection extends BaseEntity
{
    // 数据库连接编号
    private Long id;

    // 数据库连接名称
    private String name;

    // 数据库连接类型编号
    private DBConnectionType dbconnectionType;

    private Integer dbConnectionTypeId;

    // 数据库服务器名称
    private String serverName;

    // 数据库服务器端口号
    private Integer serverPort;

    // 数据库服务器端口号
    private String databaseName;

    // 数据库连接用户名
    private String userName;

    // 数据库连接密码
    private String userPassword;

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

    public DBConnectionType getDbconnectionType() {
        return dbconnectionType;
    }

    public void setDbconnectionType(DBConnectionType dbconnectionType) {
        this.dbconnectionType = dbconnectionType;
    }

    public Integer getDbConnectionTypeId() {
        return dbConnectionTypeId;
    }

    public void setDbConnectionTypeId(Integer dbConnectionTypeId) {
        this.dbConnectionTypeId = dbConnectionTypeId;
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

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    @Override
    public String toString() {
        return "DBConnection{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", dbconnectionType=" + dbconnectionType +
                ", dbConnectionTypeId=" + dbConnectionTypeId +
                ", serverName='" + serverName + '\'' +
                ", serverPort=" + serverPort +
                ", databaseName='" + databaseName + '\'' +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}