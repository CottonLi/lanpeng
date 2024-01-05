package com.lanpeng.data.mapper;

import java.util.List;
import com.lanpeng.data.domain.Lpdatastorage;

/**
 * 数据存储Mapper接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface LpdatastorageMapper 
{
    /**
     * 查询数据存储
     * 
     * @param id 数据存储主键
     * @return 数据存储
     */
    public Lpdatastorage selectLpdatastorageById(Long id);

    /**
     * 查询数据存储列表
     * 
     * @param lpdatastorage 数据存储
     * @return 数据存储集合
     */
    public List<Lpdatastorage> selectLpdatastorageList(Lpdatastorage lpdatastorage);

    /**
     * 新增数据存储
     * 
     * @param lpdatastorage 数据存储
     * @return 结果
     */
    public int insertLpdatastorage(Lpdatastorage lpdatastorage);

    /**
     * 修改数据存储
     * 
     * @param lpdatastorage 数据存储
     * @return 结果
     */
    public int updateLpdatastorage(Lpdatastorage lpdatastorage);

    /**
     * 删除数据存储
     * 
     * @param id 数据存储主键
     * @return 结果
     */
    public int deleteLpdatastorageById(Long id);

    /**
     * 批量删除数据存储
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLpdatastorageByIds(Long[] ids);
}
