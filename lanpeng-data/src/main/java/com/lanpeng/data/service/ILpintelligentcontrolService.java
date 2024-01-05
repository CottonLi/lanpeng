package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpintelligentcontrol;

/**
 * 智能控制Service接口
 * 
 * @author liw
 * @date 2024-01-05
 */
public interface ILpintelligentcontrolService 
{
    /**
     * 查询智能控制
     * 
     * @param id 智能控制主键
     * @return 智能控制
     */
    public Lpintelligentcontrol selectLpintelligentcontrolById(Long id);

    /**
     * 查询智能控制列表
     * 
     * @param lpintelligentcontrol 智能控制
     * @return 智能控制集合
     */
    public List<Lpintelligentcontrol> selectLpintelligentcontrolList(Lpintelligentcontrol lpintelligentcontrol);

    /**
     * 新增智能控制
     * 
     * @param lpintelligentcontrol 智能控制
     * @return 结果
     */
    public int insertLpintelligentcontrol(Lpintelligentcontrol lpintelligentcontrol);

    /**
     * 修改智能控制
     * 
     * @param lpintelligentcontrol 智能控制
     * @return 结果
     */
    public int updateLpintelligentcontrol(Lpintelligentcontrol lpintelligentcontrol);

    /**
     * 批量删除智能控制
     * 
     * @param ids 需要删除的智能控制主键集合
     * @return 结果
     */
    public int deleteLpintelligentcontrolByIds(Long[] ids);

    /**
     * 删除智能控制信息
     * 
     * @param id 智能控制主键
     * @return 结果
     */
    public int deleteLpintelligentcontrolById(Long id);
}
