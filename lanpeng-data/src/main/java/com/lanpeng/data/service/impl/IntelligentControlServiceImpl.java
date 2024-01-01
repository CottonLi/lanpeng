package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.IntelligentControlE;
import com.lanpeng.data.domain.IntelligentControlItemE;
import com.lanpeng.data.mapper.IntelligentControlMapper;
import com.lanpeng.data.service.IIntelligentControlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IntelligentControlServiceImpl implements IIntelligentControlService
{
    @Autowired
    private IntelligentControlMapper intelligentControlMapper;

    /**
     * 获取所有智能控制
     *
     * @return 所有智能控制列表
     */
    @Override
    public List<IntelligentControlE> selectAllIntelligentControls()
    {
        return intelligentControlMapper.selectAllIntelligentControls();
    }

    /**
     * 通过智能控制编号获取所有的智能控制条目
     *
     * @param intelligentControlId 智能控制编号
     * @return 所有智能控制列表
     */
    @Override
    public List<IntelligentControlItemE> selectIntelligentControlItemsByIntelligentControlId(Long intelligentControlId)
    {
        return intelligentControlMapper.selectIntelligentControlItemByIntelligentControlId(intelligentControlId);
    }

    /**
     * 新增智能控制
     *
     * @param intelligentControl 智能控制
     * @return 结果
     */
    @Override
    public int insertIntelligentControl(IntelligentControlE intelligentControl)
    {
        return intelligentControlMapper.insertIntelligentControl(intelligentControl);
    }

    /**
     * 修改智能控制
     *
     * @param intelligentControl 智能控制
     * @return 结果
     */
    @Override
    public int updateIntelligentControl(IntelligentControlE intelligentControl)
    {
        return intelligentControlMapper.updateIntelligentControl(intelligentControl);
    }

    /**
     * 删除智能控制
     *
     * @param intelligentControlId 智能控制编号
     * @return 结果
     */
    @Override
    public int deleteIntelligentControlById(Long intelligentControlId)
    {
        intelligentControlMapper.deleteIntelligentControlItemByIntelligentControlId(intelligentControlId);
        return intelligentControlMapper.deleteIntelligentControlById(intelligentControlId);
    }

    /**
     * 新增智能控制条目
     *
     * @param intelligentControlItem 智能控制条目
     * @return 结果
     */
    @Override
    public int insertIntelligentControlItem(IntelligentControlItemE intelligentControlItem)
    {
        return intelligentControlMapper.insertIntelligentControlItem(intelligentControlItem);
    }

    /**
     * 修改智能控制条目
     *
     * @param intelligentControlItem 智能控制条目
     * @return 结果
     */
    @Override
    public int updateIntelligentControlItem(IntelligentControlItemE intelligentControlItem)
    {
        return intelligentControlMapper.updateIntelligentControlItem(intelligentControlItem);
    }

    /**
     * 删除智能控制条目
     *
     * @param intelligentControlItemId 智能控制编号
     * @return 结果
     */
    @Override
    public int deleteIntelligentControlItemById(Long intelligentControlItemId)
    {
        return intelligentControlMapper.deleteIntelligentControlItemById(intelligentControlItemId);
    }
}