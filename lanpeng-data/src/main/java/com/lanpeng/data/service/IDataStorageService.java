package com.lanpeng.data.service;

import com.lanpeng.data.domain.DBConnection;
import com.lanpeng.data.domain.DBConnectionType;
import com.lanpeng.data.domain.DataStorage;
import com.lanpeng.data.domain.DataStorageItem;
import java.util.List;

/**
 * 数据存储管理类的接口，目前来说虽然和数据库访问一样，但是可以比那个多。业务逻辑的接口也可以增加再这里实现
 *
 */
public interface IDataStorageService
{
    /**
     * 获取所有数据库连接类型
     *
     * @return 所有数据库连接类型列表
     */
    public List<DBConnectionType> selectAllDBConnectionTypes();

    /**
     * 获取所有数据库连接
     *
     * @return 所有数据库连接列表
     */
    public List<DBConnection> selectAllDBConnections();

    /**
     * 获取所有数据存储
     *
     * @return 所有数据存储列表
     */
    public List<DataStorage> selectAllDataStorages();

    /**
     * 通过数据存储编号获取所有的数据存储条目
     *
     * @param dataStorageId 数据存储编号
     * @return 所有数据存储列表
     */
    public List<DataStorageItem> selectDataStorageItemsByDataStorageId(Long dataStorageId);

    /**
     * 新增数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    public int insertDBConnection(DBConnection dbconnection);

    /**
     * 修改数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    public int updateDBConnection(DBConnection dbconnection);

    /**
     * 删除数据库连接
     *
     * @param dbconnectionId 数据库连接编号
     * @return 结果
     */
    public int deleteDBConnectionById(Long dbconnectionId);

    /**
     * 新增数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    public int insertDataStorage(DataStorage dataStorage);

    /**
     * 修改数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    public int updateDataStorage(DataStorage dataStorage);

    /**
     * 删除数据存储
     *
     * @param dataStorageId 数据存储编号
     * @return 结果
     */
    public int deleteDataStorageById(Long dataStorageId);

    /**
     * 新增数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    public int insertDataStorageItem(DataStorageItem dataStorageItem);

    /**
     * 修改数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    public int updateDataStorageItem(DataStorageItem dataStorageItem);

    /**
     * 删除数据存储条目
     *
     * @param dataStorageItemId 数据存储编号
     * @return 结果
     */
    public int deleteDataStorageItemById(Long dataStorageItemId);
}