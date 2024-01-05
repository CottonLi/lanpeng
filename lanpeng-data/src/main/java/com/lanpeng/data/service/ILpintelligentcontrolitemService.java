package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpintelligentcontrolitem;

/**
 * 智能控制项Service接口
 * 
 * @author liw
 * @date 2024-01-05
 */
public interface ILpintelligentcontrolitemService 
{
    /**
     * 查询智能控制项
     * 
     * @param id 智能控制项主键
     * @return 智能控制项
     */
    public Lpintelligentcontrolitem selectLpintelligentcontrolitemById(Long id);

    /**
     * 查询智能控制项列表
     * 
     * @param icid 智能控制编号
     * @return 智能控制项集合
     */
    public List<Lpintelligentcontrolitem> selectLpintelligentcontrolitemList(Long icid);

    /**
     * 新增智能控制项
     * 
     * @param lpintelligentcontrolitem 智能控制项
     * @return 结果
     */
    public int insertLpintelligentcontrolitem(Lpintelligentcontrolitem lpintelligentcontrolitem);

    /**
     * 修改智能控制项
     * 
     * @param lpintelligentcontrolitem 智能控制项
     * @return 结果
     */
    public int updateLpintelligentcontrolitem(Lpintelligentcontrolitem lpintelligentcontrolitem);

    /**
     * 批量删除智能控制项
     * 
     * @param ids 需要删除的智能控制项主键集合
     * @return 结果
     */
    public int deleteLpintelligentcontrolitemByIds(Long[] ids);

    /**
     * 删除智能控制项信息
     * 
     * @param id 智能控制项主键
     * @return 结果
     */
    public int deleteLpintelligentcontrolitemById(Long id);
}
