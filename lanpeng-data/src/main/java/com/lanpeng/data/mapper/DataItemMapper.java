package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.DataItemE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 数据库访问层--数据项管理
 *
 * @author liw
 */
@Mapper
public interface DataItemMapper
{
    /**
     * 获取所有数据项
     *
     * @return 所有数据项列表
     */
    public List<DataItemE> selectDataItemList();

    /**
     * 根据数据项编号查询数据项内容
     *
     * @param dataItemId 数据项编号
     * @return 数据项内容
     */
    public DataItemE selectDataItemById(@Param("diid")Long dataItemId);

    /**
     * 新增数据项
     *
     * @param dataItem 数据项
     * @return 结果
     */
    public int insertDataItem(@Param("di")DataItemE dataItem);

    /**
     * 修改数据项
     *
     * @param dataItem 数据信息
     * @return 结果
     */
    public int updateDataItem(@Param("di")DataItemE dataItem);

    /**
     * 删除数据项
     *
     * @param dataItemId 数据项编号
     * @return 结果
     */
    public int deleteDataItemById(@Param("diid")Long dataItemId);
}