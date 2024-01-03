package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.DataItem;
import com.lanpeng.data.domain.Role;
import com.lanpeng.data.mapper.Role2DataItemMapper;
import com.lanpeng.data.service.IRole2DataItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class Role2DataItemServiceImpl implements IRole2DataItemService
{
    @Autowired
    private Role2DataItemMapper role2DataItemMapper;

    @Override
    public List<DataItem> getDataItemsByUserId(Long userId)
    {
        List<DataItem> result = new ArrayList<DataItem>();
        List<Role> roles = role2DataItemMapper.getRolesByUserId(userId);

        for (Role oneRole : roles)
        {
            List<DataItem> oneResult = role2DataItemMapper.getDataItemsByRoleId(oneRole.getId());
            for(DataItem oneDataItem : oneResult)
            {
                boolean match = result.stream().anyMatch(di -> Objects.equals(di.getId(), oneDataItem.getId()));
                if(!match)
                {
                    result.add(oneDataItem);
                }
            }
        }

        return result;
    }

    @Override
    public List<DataItem> getDataItemsByRoleId(Long roleId)
    {
        return role2DataItemMapper.getDataItemsByRoleId(roleId);
    }

    @Override
    public int updateDataItemsByRoleId(Long roleId,Long[] dataItemIds)
    {
        role2DataItemMapper.deleteDataItemByRoleId(roleId);
        return role2DataItemMapper.addDataItems2Role(roleId,dataItemIds);
    }

    @Override
    public int deleteDataItemByRoleId(Long roleId)
    {
        return role2DataItemMapper.deleteDataItemByRoleId(roleId);
    }
}