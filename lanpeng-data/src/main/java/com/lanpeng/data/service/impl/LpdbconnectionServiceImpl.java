package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpdbconnectionMapper;
import com.lanpeng.data.domain.Lpdbconnection;
import com.lanpeng.data.service.ILpdbconnectionService;

/**
 * lpdbconnectionService业务层处理
 * 
 * @author liw
 * @date 2024-01-04
 */
@Service
public class LpdbconnectionServiceImpl implements ILpdbconnectionService 
{
    @Autowired
    private LpdbconnectionMapper lpdbconnectionMapper;

    /**
     * 查询lpdbconnection
     * 
     * @param id lpdbconnection主键
     * @return lpdbconnection
     */
    @Override
    public Lpdbconnection selectLpdbconnectionById(Long id)
    {
        return lpdbconnectionMapper.selectLpdbconnectionById(id);
    }

    /**
     * 查询lpdbconnection列表
     * 
     * @param lpdbconnection lpdbconnection
     * @return lpdbconnection
     */
    @Override
    public List<Lpdbconnection> selectLpdbconnectionList(Lpdbconnection lpdbconnection)
    {
        return lpdbconnectionMapper.selectLpdbconnectionList(lpdbconnection);
    }

    /**
     * 新增lpdbconnection
     * 
     * @param lpdbconnection lpdbconnection
     * @return 结果
     */
    @Override
    public int insertLpdbconnection(Lpdbconnection lpdbconnection)
    {
        lpdbconnection.setCreateTime(DateUtils.getNowDate());
        return lpdbconnectionMapper.insertLpdbconnection(lpdbconnection);
    }

    /**
     * 修改lpdbconnection
     * 
     * @param lpdbconnection lpdbconnection
     * @return 结果
     */
    @Override
    public int updateLpdbconnection(Lpdbconnection lpdbconnection)
    {
        lpdbconnection.setUpdateTime(DateUtils.getNowDate());
        return lpdbconnectionMapper.updateLpdbconnection(lpdbconnection);
    }

    /**
     * 批量删除lpdbconnection
     * 
     * @param ids 需要删除的lpdbconnection主键
     * @return 结果
     */
    @Override
    public int deleteLpdbconnectionByIds(Long[] ids)
    {
        return lpdbconnectionMapper.deleteLpdbconnectionByIds(ids);
    }

    /**
     * 删除lpdbconnection信息
     * 
     * @param id lpdbconnection主键
     * @return 结果
     */
    @Override
    public int deleteLpdbconnectionById(Long id)
    {
        return lpdbconnectionMapper.deleteLpdbconnectionById(id);
    }
}
