package com.lanpeng.data.service;

import com.lanpeng.data.domain.DBConnectionE;
import com.lanpeng.data.domain.DBConnectionTypeE;
import com.lanpeng.data.domain.DataStorageE;
import com.lanpeng.data.domain.DataStorageItemE;
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
    public List<DBConnectionTypeE> selectAllDBConnectionTypes();

    /**
     * 获取所有数据库连接
     *
     * @return 所有数据库连接列表
     */
    public List<DBConnectionE> selectAllDBConnections();

    /**
     * 获取所有数据存储
     *
     * @return 所有数据存储列表
     */
    public List<DataStorageE> selectAllDataStorages();

    /**
     * 通过数据存储编号获取所有的数据存储条目
     *
     * @param dataStorageId 数据存储编号
     * @return 所有数据存储列表
     */
    public List<DataStorageItemE> selectDataStorageItemsByDataStorageId(Long dataStorageId);

    /**
     * 新增数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    public int insertDBConnection(DBConnectionE dbconnection);

    /**
     * 修改数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    public int updateDBConnection(DBConnectionE dbconnection);

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
    public int insertDataStorage(DataStorageE dataStorage);

    /**
     * 修改数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    public int updateDataStorage(DataStorageE dataStorage);

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
    public int insertDataStorageItem(DataStorageItemE dataStorageItem);

    /**
     * 修改数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    public int updateDataStorageItem(DataStorageItemE dataStorageItem);

    /**
     * 删除数据存储条目
     *
     * @param dataStorageItemId 数据存储编号
     * @return 结果
     */
    public int deleteDataStorageItemById(Long dataStorageItemId);
}