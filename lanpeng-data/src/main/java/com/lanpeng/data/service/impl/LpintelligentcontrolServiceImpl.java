package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpintelligentcontrolMapper;
import com.lanpeng.data.domain.Lpintelligentcontrol;
import com.lanpeng.data.service.ILpintelligentcontrolService;

/**
 * 智能控制Service业务层处理
 * 
 * @author liw
 * @date 2024-01-05
 */
@Service
public class LpintelligentcontrolServiceImpl implements ILpintelligentcontrolService 
{
    @Autowired
    private LpintelligentcontrolMapper lpintelligentcontrolMapper;

    /**
     * 查询智能控制
     * 
     * @param id 智能控制主键
     * @return 智能控制
     */
    @Override
    public Lpintelligentcontrol selectLpintelligentcontrolById(Long id)
    {
        return lpintelligentcontrolMapper.selectLpintelligentcontrolById(id);
    }

    /**
     * 查询智能控制列表
     * 
     * @param lpintelligentcontrol 智能控制
     * @return 智能控制
     */
    @Override
    public List<Lpintelligentcontrol> selectLpintelligentcontrolList(Lpintelligentcontrol lpintelligentcontrol)
    {
        return lpintelligentcontrolMapper.selectLpintelligentcontrolList(lpintelligentcontrol);
    }

    /**
     * 新增智能控制
     * 
     * @param lpintelligentcontrol 智能控制
     * @return 结果
     */
    @Override
    public int insertLpintelligentcontrol(Lpintelligentcontrol lpintelligentcontrol)
    {
        lpintelligentcontrol.setCreateTime(DateUtils.getNowDate());
        return lpintelligentcontrolMapper.insertLpintelligentcontrol(lpintelligentcontrol);
    }

    /**
     * 修改智能控制
     * 
     * @param lpintelligentcontrol 智能控制
     * @return 结果
     */
    @Override
    public int updateLpintelligentcontrol(Lpintelligentcontrol lpintelligentcontrol)
    {
        lpintelligentcontrol.setUpdateTime(DateUtils.getNowDate());
        return lpintelligentcontrolMapper.updateLpintelligentcontrol(lpintelligentcontrol);
    }

    /**
     * 批量删除智能控制
     * 
     * @param ids 需要删除的智能控制主键
     * @return 结果
     */
    @Override
    public int deleteLpintelligentcontrolByIds(Long[] ids)
    {
        return lpintelligentcontrolMapper.deleteLpintelligentcontrolByIds(ids);
    }

    /**
     * 删除智能控制信息
     * 
     * @param id 智能控制主键
     * @return 结果
     */
    @Override
    public int deleteLpintelligentcontrolById(Long id)
    {
        return lpintelligentcontrolMapper.deleteLpintelligentcontrolById(id);
    }
}
