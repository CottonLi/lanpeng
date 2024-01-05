package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpintelligentcontrolitemMapper;
import com.lanpeng.data.domain.Lpintelligentcontrolitem;
import com.lanpeng.data.service.ILpintelligentcontrolitemService;

/**
 * 智能控制项Service业务层处理
 * 
 * @author liw
 * @date 2024-01-05
 */
@Service
public class LpintelligentcontrolitemServiceImpl implements ILpintelligentcontrolitemService 
{
    @Autowired
    private LpintelligentcontrolitemMapper lpintelligentcontrolitemMapper;

    /**
     * 查询智能控制项
     * 
     * @param id 智能控制项主键
     * @return 智能控制项
     */
    @Override
    public Lpintelligentcontrolitem selectLpintelligentcontrolitemById(Long id)
    {
        return lpintelligentcontrolitemMapper.selectLpintelligentcontrolitemById(id);
    }

    /**
     * 查询智能控制项列表
     * 
     * @param icid 智能控制编号
     * @return 智能控制项
     */
    @Override
    public List<Lpintelligentcontrolitem> selectLpintelligentcontrolitemList(Long icid)
    {
        return lpintelligentcontrolitemMapper.selectLpintelligentcontrolitemList(icid);
    }

    /**
     * 新增智能控制项
     * 
     * @param lpintelligentcontrolitem 智能控制项
     * @return 结果
     */
    @Override
    public int insertLpintelligentcontrolitem(Lpintelligentcontrolitem lpintelligentcontrolitem)
    {
        lpintelligentcontrolitem.setCreateTime(DateUtils.getNowDate());
        return lpintelligentcontrolitemMapper.insertLpintelligentcontrolitem(lpintelligentcontrolitem);
    }

    /**
     * 修改智能控制项
     * 
     * @param lpintelligentcontrolitem 智能控制项
     * @return 结果
     */
    @Override
    public int updateLpintelligentcontrolitem(Lpintelligentcontrolitem lpintelligentcontrolitem)
    {
        lpintelligentcontrolitem.setUpdateTime(DateUtils.getNowDate());
        return lpintelligentcontrolitemMapper.updateLpintelligentcontrolitem(lpintelligentcontrolitem);
    }

    /**
     * 批量删除智能控制项
     * 
     * @param ids 需要删除的智能控制项主键
     * @return 结果
     */
    @Override
    public int deleteLpintelligentcontrolitemByIds(Long[] ids)
    {
        return lpintelligentcontrolitemMapper.deleteLpintelligentcontrolitemByIds(ids);
    }

    /**
     * 删除智能控制项信息
     * 
     * @param id 智能控制项主键
     * @return 结果
     */
    @Override
    public int deleteLpintelligentcontrolitemById(Long id)
    {
        return lpintelligentcontrolitemMapper.deleteLpintelligentcontrolitemById(id);
    }
}
