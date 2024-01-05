package com.lanpeng.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpdbconnectiontypeMapper;
import com.lanpeng.data.domain.Lpdbconnectiontype;
import com.lanpeng.data.service.ILpdbconnectiontypeService;

/**
 * lpdbconnectiontypeService业务层处理
 * 
 * @author liw
 * @date 2024-01-04
 */
@Service
public class LpdbconnectiontypeServiceImpl implements ILpdbconnectiontypeService 
{
    @Autowired
    private LpdbconnectiontypeMapper lpdbconnectiontypeMapper;

    /**
     * 查询lpdbconnectiontype
     * 
     * @param id lpdbconnectiontype主键
     * @return lpdbconnectiontype
     */
    @Override
    public Lpdbconnectiontype selectLpdbconnectiontypeById(Long id)
    {
        return lpdbconnectiontypeMapper.selectLpdbconnectiontypeById(id);
    }

    /**
     * 查询lpdbconnectiontype列表
     * 
     * @param lpdbconnectiontype lpdbconnectiontype
     * @return lpdbconnectiontype
     */
    @Override
    public List<Lpdbconnectiontype> selectLpdbconnectiontypeList(Lpdbconnectiontype lpdbconnectiontype)
    {
        return lpdbconnectiontypeMapper.selectLpdbconnectiontypeList(lpdbconnectiontype);
    }

    /**
     * 新增lpdbconnectiontype
     * 
     * @param lpdbconnectiontype lpdbconnectiontype
     * @return 结果
     */
    @Override
    public int insertLpdbconnectiontype(Lpdbconnectiontype lpdbconnectiontype)
    {
        return lpdbconnectiontypeMapper.insertLpdbconnectiontype(lpdbconnectiontype);
    }

    /**
     * 修改lpdbconnectiontype
     * 
     * @param lpdbconnectiontype lpdbconnectiontype
     * @return 结果
     */
    @Override
    public int updateLpdbconnectiontype(Lpdbconnectiontype lpdbconnectiontype)
    {
        return lpdbconnectiontypeMapper.updateLpdbconnectiontype(lpdbconnectiontype);
    }

    /**
     * 批量删除lpdbconnectiontype
     * 
     * @param ids 需要删除的lpdbconnectiontype主键
     * @return 结果
     */
    @Override
    public int deleteLpdbconnectiontypeByIds(Long[] ids)
    {
        return lpdbconnectiontypeMapper.deleteLpdbconnectiontypeByIds(ids);
    }

    /**
     * 删除lpdbconnectiontype信息
     * 
     * @param id lpdbconnectiontype主键
     * @return 结果
     */
    @Override
    public int deleteLpdbconnectiontypeById(Long id)
    {
        return lpdbconnectiontypeMapper.deleteLpdbconnectiontypeById(id);
    }
}
