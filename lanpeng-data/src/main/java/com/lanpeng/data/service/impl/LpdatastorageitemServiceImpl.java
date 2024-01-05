package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpdatastorageitemMapper;
import com.lanpeng.data.domain.Lpdatastorageitem;
import com.lanpeng.data.service.ILpdatastorageitemService;

/**
 * 数据存储项Service业务层处理
 * 
 * @author liw
 * @date 2024-01-04
 */
@Service
public class LpdatastorageitemServiceImpl implements ILpdatastorageitemService 
{
    @Autowired
    private LpdatastorageitemMapper lpdatastorageitemMapper;

    /**
     * 查询数据存储项
     * 
     * @param id 数据存储项主键
     * @return 数据存储项
     */
    @Override
    public Lpdatastorageitem selectLpdatastorageitemById(Long id)
    {
        return lpdatastorageitemMapper.selectLpdatastorageitemById(id);
    }

    /**
     * 查询数据存储项列表
     * 
     * @param lpdatastorageitem 数据存储项
     * @return 数据存储项
     */
    @Override
    public List<Lpdatastorageitem> selectLpdatastorageitemList(Long dsid)
    {
        return lpdatastorageitemMapper.selectLpdatastorageitemList(dsid);
    }

    /**
     * 新增数据存储项
     * 
     * @param lpdatastorageitem 数据存储项
     * @return 结果
     */
    @Override
    public int insertLpdatastorageitem(Lpdatastorageitem lpdatastorageitem)
    {
        lpdatastorageitem.setCreateTime(DateUtils.getNowDate());
        return lpdatastorageitemMapper.insertLpdatastorageitem(lpdatastorageitem);
    }

    /**
     * 修改数据存储项
     * 
     * @param lpdatastorageitem 数据存储项
     * @return 结果
     */
    @Override
    public int updateLpdatastorageitem(Lpdatastorageitem lpdatastorageitem)
    {
        lpdatastorageitem.setUpdateTime(DateUtils.getNowDate());
        return lpdatastorageitemMapper.updateLpdatastorageitem(lpdatastorageitem);
    }

    /**
     * 批量删除数据存储项
     * 
     * @param ids 需要删除的数据存储项主键
     * @return 结果
     */
    @Override
    public int deleteLpdatastorageitemByIds(Long[] ids)
    {
        return lpdatastorageitemMapper.deleteLpdatastorageitemByIds(ids);
    }

    /**
     * 删除数据存储项信息
     * 
     * @param id 数据存储项主键
     * @return 结果
     */
    @Override
    public int deleteLpdatastorageitemById(Long id)
    {
        return lpdatastorageitemMapper.deleteLpdatastorageitemById(id);
    }
}
