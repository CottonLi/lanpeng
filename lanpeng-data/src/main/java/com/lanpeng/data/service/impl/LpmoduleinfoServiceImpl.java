package com.lanpeng.data.service.impl;

import java.util.List;
import com.lanpeng.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lanpeng.data.mapper.LpmoduleinfoMapper;
import com.lanpeng.data.domain.Lpmoduleinfo;
import com.lanpeng.data.service.ILpmoduleinfoService;

/**
 * 组件Service业务层处理
 * 
 * @author liw
 * @date 2024-01-04
 */
@Service
public class LpmoduleinfoServiceImpl implements ILpmoduleinfoService 
{
    @Autowired
    private LpmoduleinfoMapper lpmoduleinfoMapper;

    /**
     * 查询组件
     * 
     * @param id 组件主键
     * @return 组件
     */
    @Override
    public Lpmoduleinfo selectLpmoduleinfoById(Long id)
    {
        return lpmoduleinfoMapper.selectLpmoduleinfoById(id);
    }

    /**
     * 查询组件列表
     * 
     * @param lpmoduleinfo 组件
     * @return 组件
     */
    @Override
    public List<Lpmoduleinfo> selectLpmoduleinfoList(Lpmoduleinfo lpmoduleinfo)
    {
        return lpmoduleinfoMapper.selectLpmoduleinfoList(lpmoduleinfo);
    }

    /**
     * 新增组件
     * 
     * @param lpmoduleinfo 组件
     * @return 结果
     */
    @Override
    public int insertLpmoduleinfo(Lpmoduleinfo lpmoduleinfo)
    {
        lpmoduleinfo.setCreateTime(DateUtils.getNowDate());
        return lpmoduleinfoMapper.insertLpmoduleinfo(lpmoduleinfo);
    }

    /**
     * 修改组件
     * 
     * @param lpmoduleinfo 组件
     * @return 结果
     */
    @Override
    public int updateLpmoduleinfo(Lpmoduleinfo lpmoduleinfo)
    {
        lpmoduleinfo.setUpdateTime(DateUtils.getNowDate());
        return lpmoduleinfoMapper.updateLpmoduleinfo(lpmoduleinfo);
    }

    /**
     * 批量删除组件
     * 
     * @param ids 需要删除的组件主键
     * @return 结果
     */
    @Override
    public int deleteLpmoduleinfoByIds(Long[] ids)
    {
        return lpmoduleinfoMapper.deleteLpmoduleinfoByIds(ids);
    }

    /**
     * 删除组件信息
     * 
     * @param id 组件主键
     * @return 结果
     */
    @Override
    public int deleteLpmoduleinfoById(Long id)
    {
        return lpmoduleinfoMapper.deleteLpmoduleinfoById(id);
    }
}
