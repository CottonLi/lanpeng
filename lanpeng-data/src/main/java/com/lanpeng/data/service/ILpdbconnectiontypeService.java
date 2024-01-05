package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpdbconnectiontype;

/**
 * lpdbconnectiontypeService接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface ILpdbconnectiontypeService 
{
    /**
     * 查询lpdbconnectiontype
     * 
     * @param id lpdbconnectiontype主键
     * @return lpdbconnectiontype
     */
    public Lpdbconnectiontype selectLpdbconnectiontypeById(Long id);

    /**
     * 查询lpdbconnectiontype列表
     * 
     * @param lpdbconnectiontype lpdbconnectiontype
     * @return lpdbconnectiontype集合
     */
    public List<Lpdbconnectiontype> selectLpdbconnectiontypeList(Lpdbconnectiontype lpdbconnectiontype);

    /**
     * 新增lpdbconnectiontype
     * 
     * @param lpdbconnectiontype lpdbconnectiontype
     * @return 结果
     */
    public int insertLpdbconnectiontype(Lpdbconnectiontype lpdbconnectiontype);

    /**
     * 修改lpdbconnectiontype
     * 
     * @param lpdbconnectiontype lpdbconnectiontype
     * @return 结果
     */
    public int updateLpdbconnectiontype(Lpdbconnectiontype lpdbconnectiontype);

    /**
     * 批量删除lpdbconnectiontype
     * 
     * @param ids 需要删除的lpdbconnectiontype主键集合
     * @return 结果
     */
    public int deleteLpdbconnectiontypeByIds(Long[] ids);

    /**
     * 删除lpdbconnectiontype信息
     * 
     * @param id lpdbconnectiontype主键
     * @return 结果
     */
    public int deleteLpdbconnectiontypeById(Long id);
}
