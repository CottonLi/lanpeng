package com.lanpeng.data.service;

import java.util.List;
import com.lanpeng.data.domain.Lpmoduleinfo;

/**
 * 组件Service接口
 * 
 * @author liw
 * @date 2024-01-04
 */
public interface ILpmoduleinfoService 
{
    /**
     * 查询组件
     * 
     * @param id 组件主键
     * @return 组件
     */
    public Lpmoduleinfo selectLpmoduleinfoById(Long id);

    /**
     * 查询组件列表
     * 
     * @param lpmoduleinfo 组件
     * @return 组件集合
     */
    public List<Lpmoduleinfo> selectLpmoduleinfoList(Lpmoduleinfo lpmoduleinfo);

    /**
     * 新增组件
     * 
     * @param lpmoduleinfo 组件
     * @return 结果
     */
    public int insertLpmoduleinfo(Lpmoduleinfo lpmoduleinfo);

    /**
     * 修改组件
     * 
     * @param lpmoduleinfo 组件
     * @return 结果
     */
    public int updateLpmoduleinfo(Lpmoduleinfo lpmoduleinfo);

    /**
     * 批量删除组件
     * 
     * @param ids 需要删除的组件主键集合
     * @return 结果
     */
    public int deleteLpmoduleinfoByIds(Long[] ids);

    /**
     * 删除组件信息
     * 
     * @param id 组件主键
     * @return 结果
     */
    public int deleteLpmoduleinfoById(Long id);
}
