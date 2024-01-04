package com.lanpeng.data.mapper;

import java.util.List;
import com.lanpeng.data.domain.Lpdbconnection;

/**
 * lpdbconnectionMapper接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface LpdbconnectionMapper 
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
     * 删除lpdbconnection
     * 
     * @param id lpdbconnection主键
     * @return 结果
     */
    public int deleteLpdbconnectionById(Long id);

    /**
     * 批量删除lpdbconnection
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLpdbconnectionByIds(Long[] ids);
}
