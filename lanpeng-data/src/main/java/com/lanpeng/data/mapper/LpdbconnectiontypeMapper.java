package com.lanpeng.data.mapper;

import java.util.List;
import com.lanpeng.data.domain.Lpdbconnectiontype;

/**
 * lpdbconnectiontypeMapper接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface LpdbconnectiontypeMapper 
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
     * 删除lpdbconnectiontype
     * 
     * @param id lpdbconnectiontype主键
     * @return 结果
     */
    public int deleteLpdbconnectiontypeById(Long id);

    /**
     * 批量删除lpdbconnectiontype
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLpdbconnectiontypeByIds(Long[] ids);
}
