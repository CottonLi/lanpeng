package com.lanpeng.data.mapper;

import java.util.List;
import com.lanpeng.data.domain.Lpdatastorageitem;

/**
 * 数据存储项Mapper接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface LpdatastorageitemMapper 
{
    /**
     * 查询数据存储项
     * 
     * @param id 数据存储项主键
     * @return 数据存储项
     */
    public Lpdatastorageitem selectLpdatastorageitemById(Long id);

    /**
     * 查询数据存储项列表
     * 
     * @param lpdatastorageitem 数据存储项
     * @return 数据存储项集合
     */
    public List<Lpdatastorageitem> selectLpdatastorageitemList(Long dsid);

    /**
     * 新增数据存储项
     * 
     * @param lpdatastorageitem 数据存储项
     * @return 结果
     */
    public int insertLpdatastorageitem(Lpdatastorageitem lpdatastorageitem);

    /**
     * 修改数据存储项
     * 
     * @param lpdatastorageitem 数据存储项
     * @return 结果
     */
    public int updateLpdatastorageitem(Lpdatastorageitem lpdatastorageitem);

    /**
     * 删除数据存储项
     * 
     * @param id 数据存储项主键
     * @return 结果
     */
    public int deleteLpdatastorageitemById(Long id);

    /**
     * 批量删除数据存储项
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLpdatastorageitemByIds(Long[] ids);
}
