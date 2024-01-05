package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpdatastorage;

/**
 * 数据存储Service接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface ILpdatastorageService 
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
     * 批量删除数据存储
     * 
     * @param ids 需要删除的数据存储主键集合
     * @return 结果
     */
    public int deleteLpdatastorageByIds(Long[] ids);

    /**
     * 删除数据存储信息
     * 
     * @param id 数据存储主键
     * @return 结果
     */
    public int deleteLpdatastorageById(Long id);
}
