package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpdatastorageMapper;
import com.lanpeng.data.domain.Lpdatastorage;
import com.lanpeng.data.service.ILpdatastorageService;

/**
 * 数据存储Service业务层处理
 * 
 * @author liw
 * @date 2024-01-04
 */
@Service
public class LpdatastorageServiceImpl implements ILpdatastorageService 
{
    @Autowired
    private LpdatastorageMapper lpdatastorageMapper;

    /**
     * 查询数据存储
     * 
     * @param id 数据存储主键
     * @return 数据存储
     */
    @Override
    public Lpdatastorage selectLpdatastorageById(Long id)
    {
        return lpdatastorageMapper.selectLpdatastorageById(id);
    }

    /**
     * 查询数据存储列表
     * 
     * @param lpdatastorage 数据存储
     * @return 数据存储
     */
    @Override
    public List<Lpdatastorage> selectLpdatastorageList(Lpdatastorage lpdatastorage)
    {
        return lpdatastorageMapper.selectLpdatastorageList(lpdatastorage);
    }

    /**
     * 新增数据存储
     * 
     * @param lpdatastorage 数据存储
     * @return 结果
     */
    @Override
    public int insertLpdatastorage(Lpdatastorage lpdatastorage)
    {
        lpdatastorage.setCreateTime(DateUtils.getNowDate());
        return lpdatastorageMapper.insertLpdatastorage(lpdatastorage);
    }

    /**
     * 修改数据存储
     * 
     * @param lpdatastorage 数据存储
     * @return 结果
     */
    @Override
    public int updateLpdatastorage(Lpdatastorage lpdatastorage)
    {
        lpdatastorage.setUpdateTime(DateUtils.getNowDate());
        return lpdatastorageMapper.updateLpdatastorage(lpdatastorage);
    }

    /**
     * 批量删除数据存储
     * 
     * @param ids 需要删除的数据存储主键
     * @return 结果
     */
    @Override
    public int deleteLpdatastorageByIds(Long[] ids)
    {
        return lpdatastorageMapper.deleteLpdatastorageByIds(ids);
    }

    /**
     * 删除数据存储信息
     * 
     * @param id 数据存储主键
     * @return 结果
     */
    @Override
    public int deleteLpdatastorageById(Long id)
    {
        return lpdatastorageMapper.deleteLpdatastorageById(id);
    }
}
