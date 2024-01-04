package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * lpdbconnection对象 lpdbconnection
 * 
 * @author liw
 * @date 2024-01-04
 */
public class Lpdbconnection extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 数据库连接名称 */
    @Excel(name = "数据库连接名称")
    private String name;

    /** 数据库连接类型--对应类型编号 */
    @Excel(name = "数据库连接类型编号")
    private Long dbConnectionTypeId;

    /** 数据库连接类型--对应类型名称 */
    @Excel(name = "数据库连接类型名称")
    private String dbConnectionTypeName;

    /** 数据库连接---服务器名称 */
    @Excel(name = "服务器名称")
    private String serverName;

    /** 数据库连接---服务器端口号 */
    @Excel(name = "服务器端口号")
    private Long serverPort;

    /** 数据库连接---数据库名称 */
    @Excel(name = "数据库名称")
    private String databaseName;

    /** 数据库连接---用户名 */
    @Excel(name = "用户名")
    private String userName;

    /** 数据库连接---密码 */
    @Excel(name = "密码")
    private String userPassword;

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
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setDbConnectionTypeId(Long dbConnectionTypeId) 
    {
        this.dbConnectionTypeId = dbConnectionTypeId;
    }

    public Long getDbConnectionTypeId() 
    {
        return dbConnectionTypeId;
    }

    public String getDbConnectionTypeName() {
        return dbConnectionTypeName;
    }

    public void setDbConnectionTypeName(String dbConnectionTypeName) {
        this.dbConnectionTypeName = dbConnectionTypeName;
    }

    public void setServerName(String serverName)
    {
        this.serverName = serverName;
    }

    public String getServerName() 
    {
        return serverName;
    }
    public void setServerPort(Long serverPort) 
    {
        this.serverPort = serverPort;
    }

    public Long getServerPort() 
    {
        return serverPort;
    }
    public void setDatabaseName(String databaseName) 
    {
        this.databaseName = databaseName;
    }

    public String getDatabaseName() 
    {
        return databaseName;
    }
    public void setUserName(String userName) 
    {
        this.userName = userName;
    }

    public String getUserName() 
    {
        return userName;
    }
    public void setUserPassword(String userPassword) 
    {
        this.userPassword = userPassword;
    }

    public String getUserPassword() 
    {
        return userPassword;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return "Lpdbconnection{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", dbConnectionTypeId=" + dbConnectionTypeId +
                ", dbConnectionTypeName=" + dbConnectionTypeName +
                ", serverName='" + serverName + '\'' +
                ", serverPort=" + serverPort +
                ", databaseName='" + databaseName + '\'' +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", delFlag='" + delFlag + '\'' +
                '}';
    }
}