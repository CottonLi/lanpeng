package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpdbconnection;

/**
 * lpdbconnectionService接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface ILpdbconnectionService 
{
    /**
     * 查询lpdbconnection
     * 
     * @param id lpdbconnection主键
     * @return lpdbconnection
     */
    public Lpdbconnection selectLpdbconnectionById(Long id);

    /**
     * 查询lpdbconnection列表
     * 
     * @param lpdbconnection lpdbconnection
     * @return lpdbconnection集合
     */
    public List<Lpdbconnection> selectLpdbconnectionList(Lpdbconnection lpdbconnection);

    /**
     * 新增lpdbconnection
     * 
     * @param lpdbconnection lpdbconnection
     * @return 结果
     */
    public int insertLpdbconnection(Lpdbconnection lpdbconnection);

    /**
     * 修改lpdbconnection
     * 
     * @param lpdbconnection lpdbconnection
     * @return 结果
     */
    public int updateLpdbconnection(Lpdbconnection lpdbconnection);

    /**
     * 批量删除lpdbconnection
     * 
     * @param ids 需要删除的lpdbconnection主键集合
     * @return 结果
     */
    public int deleteLpdbconnectionByIds(Long[] ids);

    /**
     * 删除lpdbconnection信息
     * 
     * @param id lpdbconnection主键
     * @return 结果
     */
    public int deleteLpdbconnectionById(Long id);
}
