package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpdataitemMapper;
import com.lanpeng.data.domain.Lpdataitem;
import com.lanpeng.data.service.ILpdataitemService;

/**
 * 数据项Service业务层处理
 * 
 * @author liw
 * @date 2024-01-04
 */
@Service
public class LpdataitemServiceImpl implements ILpdataitemService 
{
    @Autowired
    private LpdataitemMapper lpdataitemMapper;

    /**
     * 查询数据项
     * 
     * @param id 数据项主键
     * @return 数据项
     */
    @Override
    public Lpdataitem selectLpdataitemById(Long id)
    {
        return lpdataitemMapper.selectLpdataitemById(id);
    }

    /**
     * 查询数据项列表
     * 
     * @param lpdataitem 数据项
     * @return 数据项
     */
    @Override
    public List<Lpdataitem> selectLpdataitemList(Lpdataitem lpdataitem)
    {
        return lpdataitemMapper.selectLpdataitemList(lpdataitem);
    }

    /**
     * 新增数据项
     * 
     * @param lpdataitem 数据项
     * @return 结果
     */
    @Override
    public int insertLpdataitem(Lpdataitem lpdataitem)
    {
        lpdataitem.setCreateTime(DateUtils.getNowDate());
        return lpdataitemMapper.insertLpdataitem(lpdataitem);
    }

    /**
     * 修改数据项
     * 
     * @param lpdataitem 数据项
     * @return 结果
     */
    @Override
    public int updateLpdataitem(Lpdataitem lpdataitem)
    {
        lpdataitem.setUpdateTime(DateUtils.getNowDate());
        return lpdataitemMapper.updateLpdataitem(lpdataitem);
    }

    /**
     * 批量删除数据项
     * 
     * @param ids 需要删除的数据项主键
     * @return 结果
     */
    @Override
    public int deleteLpdataitemByIds(Long[] ids)
    {
        return lpdataitemMapper.deleteLpdataitemByIds(ids);
    }

    /**
     * 删除数据项信息
     * 
     * @param id 数据项主键
     * @return 结果
     */
    @Override
    public int deleteLpdataitemById(Long id)
    {
        return lpdataitemMapper.deleteLpdataitemById(id);
    }
}
