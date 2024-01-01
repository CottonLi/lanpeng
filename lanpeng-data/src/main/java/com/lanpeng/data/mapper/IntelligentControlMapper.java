package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 数据库访问层--智能控制管理（直接对表操作的，不处理任何业务逻辑）
 *
 * @author liw
 */
@Mapper
public interface IntelligentControlMapper
{
    /**
     * 获取所有智能控制
     *
     * @return 所有智能控制条目
     */
    public List<IntelligentControlE> selectAllIntelligentControls();

    /**
     * 通过智能控制编号获取智能控制所有内容条目
     *
     * @param intelligentControlId 智能控制编号
     * @return 所有智能控制内容条目
     */
    public List<IntelligentControlItemE> selectIntelligentControlItemByIntelligentControlId(@Param("icid")Long intelligentControlId);

    /**
     * 新增智能控制
     *
     * @param intelligentControl 智能控制
     * @return 结果
     */
    public int insertIntelligentControl(@Param("ic")IntelligentControlE intelligentControl);

    /**
     * 修改智能控制
     *
     * @param intelligentControl 智能控制
     * @return 结果
     */
    public int updateIntelligentControl(@Param("ic")IntelligentControlE intelligentControl);

    /**
     * 删除智能控制
     *
     * @param intelligentControlId 智能控制编号
     * @return 结果
     */
    public int deleteIntelligentControlById(@Param("icid")Long intelligentControlId);

    /**
     * 删除智能控制所关联的所有智能控制项
     *
     * @param intelligentControlId 智能控制编号
     * @return 结果
     */
    public int deleteIntelligentControlItemByIntelligentControlId(@Param("icid")Long intelligentControlId);

    /**
     * 新增智能控制条目
     *
     * @param intelligentControlItem 智能控制条目
     * @return 结果
     */
    public int insertIntelligentControlItem(@Param("ici")IntelligentControlItemE intelligentControlItem);

    /**
     * 修改智能控制条目
     *
     * @param intelligentControlItem 智能控制条目
     * @return 结果
     */
    public int updateIntelligentControlItem(@Param("ici")IntelligentControlItemE intelligentControlItem);

    /**
     * 删除智能控制条目
     *
     * @param intelligentControlItemId 智能控制条目编号
     * @return 结果
     */
    public int deleteIntelligentControlItemById(@Param("iciid")Long intelligentControlItemId);
}