package com.lanpeng.data.service;

import com.lanpeng.data.domain.DataItem;
import java.util.List;

public interface IRole2DataItemService
{
    public List<DataItem> getDataItemsByUserId(Long userId);

    public List<DataItem> getDataItemsByRoleId(Long roleId);

    public int updateDataItemsByRoleId(Long roleId,Long[] dataItemIds);

    public int deleteDataItemByRoleId(Long roleId);
}