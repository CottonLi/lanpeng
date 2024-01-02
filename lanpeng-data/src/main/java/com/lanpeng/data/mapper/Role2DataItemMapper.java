package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.DataItemE;
import com.lanpeng.data.domain.RoleE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface Role2DataItemMapper
{
    public List<RoleE> getRolesByUserId(@Param("uid")Long userId);

    public List<DataItemE> getDataItemsByRoleId(@Param("rid")Long roleId);

    public int addDataItem2Role(@Param("rid")Long roleId,@Param("diid")Long dataItemId);

    public int addDataItems2Role(@Param("rid")Long roleId,@Param("diids")Long[] dataItemIds);

    public int deleteDataItemByRoleId(@Param("rid")Long roleId);
}