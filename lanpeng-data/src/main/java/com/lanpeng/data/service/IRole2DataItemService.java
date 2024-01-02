package com.lanpeng.data.service;

import com.lanpeng.data.domain.DataItemE;
import java.util.List;

public interface IRole2DataItemService
{
    public List<DataItemE> getDataItemsByUserId(Long userId);

    public List<DataItemE> getDataItemsByRoleId(Long roleId);

    public int updateDataItemsByRoleId(Long roleId,Long[] dataItemIds);

    public int deleteDataItemByRoleId(Long roleId);
}