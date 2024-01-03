package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.DBConnection;
import com.lanpeng.data.domain.DBConnectionType;
import com.lanpeng.data.domain.DataStorage;
import com.lanpeng.data.domain.DataStorageItem;
import com.lanpeng.data.mapper.DataStorageMapper;
import com.lanpeng.data.service.IDataStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataStorageServiceImpl implements IDataStorageService
{
    @Autowired
    private DataStorageMapper dataStorageMapper;

    /**
     * 获取所有数据库连接类型
     *
     * @return 所有数据库连接类型列表
     */
    @Override
    public List<DBConnectionType> selectAllDBConnectionTypes()
    {
        return dataStorageMapper.selectAllDBConnectionTypes();
    }

    /**
     * 获取所有数据库连接
     *
     * @return 所有数据库连接列表
     */
    @Override
    public List<DBConnection> selectAllDBConnections()
    {
        return dataStorageMapper.selectAllDBConnections();
    }

    /**
     * 获取所有数据存储
     *
     * @return 所有数据存储列表
     */
    @Override
    public List<DataStorage> selectAllDataStorages()
    {
        return dataStorageMapper.selectAllDataStorages();
    }

    /**
     * 通过数据存储编号获取所有的数据存储条目
     *
     * @param dataStorageId 数据存储编号
     * @return 所有数据存储列表
     */
    @Override
    public List<DataStorageItem> selectDataStorageItemsByDataStorageId(Long dataStorageId)
    {
        return dataStorageMapper.selectDataStorageItemsByDataStorageId(dataStorageId);
    }

    /**
     * 新增数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    @Override
    public int insertDBConnection(DBConnection dbconnection)
    {
        return dataStorageMapper.insertDBConnection(dbconnection);
    }

    /**
     * 修改数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    @Override
    public int updateDBConnection(DBConnection dbconnection)
    {
        return dataStorageMapper.updateDBConnection(dbconnection);
    }

    /**
     * 删除数据库连接
     *
     * @param dbconnectionId 数据库连接编号
     * @return 结果
     */
    @Override
    public int deleteDBConnectionById(Long dbconnectionId)
    {
        return dataStorageMapper.deleteDBConnectionById(dbconnectionId);
    }

    /**
     * 新增数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    @Override
    public int insertDataStorage(DataStorage dataStorage)
    {
        return dataStorageMapper.insertDataStorage(dataStorage);
    }

    /**
     * 修改数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    @Override
    public int updateDataStorage(DataStorage dataStorage)
    {
        return dataStorageMapper.updateDataStorage(dataStorage);
    }

    /**
     * 删除数据存储
     *
     * @param dataStorageId 数据存储编号
     * @return 结果
     */
    @Override
    public int deleteDataStorageById(Long dataStorageId)
    {
        dataStorageMapper.deleteDataStorageItemByDataStorageId(dataStorageId);
        return dataStorageMapper.deleteDataStorageById(dataStorageId);
    }

    /**
     * 新增数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    @Override
    public int insertDataStorageItem(DataStorageItem dataStorageItem)
    {
        return dataStorageMapper.insertDataStorageItem(dataStorageItem);
    }

    /**
     * 修改数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    @Override
    public int updateDataStorageItem(DataStorageItem dataStorageItem)
    {
        return dataStorageMapper.updateDataStorageItem(dataStorageItem);
    }

    /**
     * 删除数据存储条目
     *
     * @param dataStorageItemId 数据存储编号
     * @return 结果
     */
    @Override
    public int deleteDataStorageItemById(Long dataStorageItemId)
    {
        return  dataStorageMapper.deleteDataStorageItemById(dataStorageItemId);
    }
}