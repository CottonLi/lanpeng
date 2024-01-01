package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.DataItemE;
import com.lanpeng.data.mapper.DataItemMapper;
import com.lanpeng.data.service.IDataItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataItemServiceImpl implements IDataItemService
{

    @Autowired
    private DataItemMapper dataItemMapper;

    /**
     * 查询所有数据项
     *
     * @return 所有数据项
     */
    @Override
    public List<DataItemE> selectDataItemList()
    {
        return dataItemMapper.selectDataItemList();
    }

    /**
     * 根据数据项编号查询数据项内容
     * @param dataItemId 数据项编号
     * @return 数据项内容
     */
    @Override
    public DataItemE selectDataItemById(Long dataItemId)
    {
        return dataItemMapper.selectDataItemById(dataItemId);
    }

    /**
     * 插入数据项
     *
     * @param dataItem 数据项
     * @return 结果
     */
    @Override
    public int insertDataItem(DataItemE dataItem)
    {
        return dataItemMapper.insertDataItem(dataItem);
    }

    /**
     * 修改数据项
     *
     * @param dataItem 数据项
     * @return 结果
     */
    @Override
    public int updateDataItem(DataItemE dataItem)
    {
        return dataItemMapper.updateDataItem(dataItem);
    }

    /**
     * 删除数据项
     *
     * @param dataItemId 数据项编号
     * @return 结果
     */
    @Override
    public int deleteDataItemById(Long dataItemId)
    {
        return dataItemMapper.deleteDataItemById(dataItemId);
    }
}