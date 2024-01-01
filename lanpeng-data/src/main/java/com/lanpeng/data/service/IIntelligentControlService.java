package com.lanpeng.data.service;

import com.lanpeng.data.domain.*;

import java.util.List;

/**
 * 智能控制类的接口，目前来说虽然和数据库访问一样，但是可以比那个多。业务逻辑的接口也可以增加再这里实现
 *
 */
public interface IIntelligentControlService
{
    /**
     * 获取所有智能控制
     *
     * @return 所有智能控制列表
     */
    public List<IntelligentControlE> selectAllIntelligentControls();

    /**
     * 通过智能控制编号获取所有的智能控制条目
     *
     * @param intelligentControlId 智能控制编号
     * @return 所有智能控制列表
     */
    public List<IntelligentControlItemE> selectIntelligentControlItemsByIntelligentControlId(Long intelligentControlId);

    /**
     * 新增智能控制
     *
     * @param intelligentControl 智能控制
     * @return 结果
     */
    public int insertIntelligentControl(IntelligentControlE intelligentControl);

    /**
     * 修改智能控制
     *
     * @param intelligentControl 智能控制
     * @return 结果
     */
    public int updateIntelligentControl(IntelligentControlE intelligentControl);

    /**
     * 删除智能控制
     *
     * @param intelligentControlId 智能控制编号
     * @return 结果
     */
    public int deleteIntelligentControlById(Long intelligentControlId);

    /**
     * 新增智能控制条目
     *
     * @param intelligentControlItem 智能控制条目
     * @return 结果
     */
    public int insertIntelligentControlItem(IntelligentControlItemE intelligentControlItem);

    /**
     * 修改智能控制条目
     *
     * @param intelligentControlItem 智能控制条目
     * @return 结果
     */
    public int updateIntelligentControlItem(IntelligentControlItemE intelligentControlItem);

    /**
     * 删除智能控制条目
     *
     * @param intelligentControlItemId 智能控制编号
     * @return 结果
     */
    public int deleteIntelligentControlItemById(Long intelligentControlItemId);
}