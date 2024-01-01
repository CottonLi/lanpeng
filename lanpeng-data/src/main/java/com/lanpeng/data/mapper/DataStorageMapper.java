package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.DBConnectionE;
import com.lanpeng.data.domain.DBConnectionTypeE;
import com.lanpeng.data.domain.DataStorageE;
import com.lanpeng.data.domain.DataStorageItemE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 数据库访问层--数据存储管理（直接对表操作的，不处理任何业务逻辑）
 *
 * @author liw
 */
@Mapper
public interface DataStorageMapper
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
    public List<DataStorageItemE> selectDataStorageItemsByDataStorageId(@Param("dsid")Long dataStorageId);

    /**
     * 新增数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    public int insertDBConnection(@Param("dbc")DBConnectionE dbconnection);

    /**
     * 修改数据库连接
     *
     * @param dbconnection 数据库连接
     * @return 结果
     */
    public int updateDBConnection(@Param("dbc")DBConnectionE dbconnection);

    /**
     * 删除数据库连接
     *
     * @param dbconnectionId 数据库连接编号
     * @return 结果
     */
    public int deleteDBConnectionById(@Param("dbcid")Long dbconnectionId);

    /**
     * 新增数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    public int insertDataStorage(@Param("ds")DataStorageE dataStorage);

    /**
     * 修改数据存储
     *
     * @param dataStorage 数据存储
     * @return 结果
     */
    public int updateDataStorage(@Param("ds")DataStorageE dataStorage);

    /**
     * 删除数据存储
     *
     * @param dataStorageId 数据存储编号
     * @return 结果
     */
    public int deleteDataStorageById(@Param("dsid")Long dataStorageId);

    /**
     * 删除数据存储所关联的所有数据存储项
     *
     * @param dataStorageId 数据存储编号
     * @return 结果
     */
    public int deleteDataStorageItemByDataStorageId(@Param("dsid")Long dataStorageId);

    /**
     * 新增数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    public int insertDataStorageItem(@Param("dsi")DataStorageItemE dataStorageItem);

    /**
     * 修改数据存储条目
     *
     * @param dataStorageItem 数据存储条目
     * @return 结果
     */
    public int updateDataStorageItem(@Param("dsi")DataStorageItemE dataStorageItem);

    /**
     * 删除数据存储条目
     *
     * @param dataStorageItemId 数据存储编号
     * @return 结果
     */
    public int deleteDataStorageItemById(@Param("dsiid")Long dataStorageItemId);
}