package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpdataitem;

/**
 * 数据项Service接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface ILpdataitemService 
{
    /**
     * 查询数据项
     * 
     * @param id 数据项主键
     * @return 数据项
     */
    public Lpdataitem selectLpdataitemById(Long id);

    /**
     * 查询数据项列表
     * 
     * @param lpdataitem 数据项
     * @return 数据项集合
     */
    public List<Lpdataitem> selectLpdataitemList(Lpdataitem lpdataitem);

    /**
     * 新增数据项
     * 
     * @param lpdataitem 数据项
     * @return 结果
     */
    public int insertLpdataitem(Lpdataitem lpdataitem);

    /**
     * 修改数据项
     * 
     * @param lpdataitem 数据项
     * @return 结果
     */
    public int updateLpdataitem(Lpdataitem lpdataitem);

    /**
     * 批量删除数据项
     * 
     * @param ids 需要删除的数据项主键集合
     * @return 结果
     */
    public int deleteLpdataitemByIds(Long[] ids);

    /**
     * 删除数据项信息
     * 
     * @param id 数据项主键
     * @return 结果
     */
    public int deleteLpdataitemById(Long id);
}
