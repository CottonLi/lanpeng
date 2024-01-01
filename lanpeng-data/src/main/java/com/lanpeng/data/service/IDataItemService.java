package com.lanpeng.data.service;

import com.lanpeng.data.domain.DataItemE;
import java.util.List;

public interface IDataItemService
{
    /**
     * 查询所有数据项
     *
     * @return 所有数据项
     */
    public List<DataItemE> selectDataItemList();

    /**
     * 根据数据项编号查询数据项内容
     *
     * @param dataItemId 数据项编号
     * @return 数据项内容
     */
    public DataItemE selectDataItemById(Long dataItemId);

    /**
     * 新增数据项
     *
     * @param dataItem 数据项
     * @return 结果
     */
    public int insertDataItem(DataItemE dataItem);

    /**
     * 修改数据项
     *
     * @param dataItem 数据项
     * @return 结果
     */
    public int updateDataItem(DataItemE dataItem);

    /**
     * 删除数据项
     *
     * @param dataItemId 数据项编号
     * @return 结果
     */
    public int deleteDataItemById(Long dataItemId);
}