package com.lanpeng.data.domain;

import com.lanpeng.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lanpeng.common.annotation.Excel;

/**
 * lpdbconnectiontype对象 lpdbconnectiontype
 * 
 * @author liw
 * @date 2024-01-04
 */
public class Lpdbconnectiontype extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 数据库连接类型名称--提前预制好的 */
    @Excel(name = "数据库连接类型名称--提前预制好的")
    private String name;

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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .toString();
    }
}
