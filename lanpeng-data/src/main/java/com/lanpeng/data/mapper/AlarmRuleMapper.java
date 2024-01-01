package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.AlarmRuleE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 告警规则表 数据层
 *
 * @author liw
 */
@Mapper
public interface AlarmRuleMapper
{
    /**
     * 查询告警规则
     *
     * @return 告警规则集合
     */
    public List<AlarmRuleE> selectAlarmRuleList();

    /**
     * 按照告警规则编号查找告警规则
     *
     * @param alarmRuleId 告警规则编号
     * @return 告警规则
     */
    public AlarmRuleE selectAlarmRuleById(@Param("arid")Long alarmRuleId);

    /**
     * 添加告警规则
     *
     * @param alarmRule 告警规则
     * @return 结果
     */
    public int insertAlarmRule(@Param("ar")AlarmRuleE alarmRule);

    /**
     * 更新告警规则
     *
     * @param alarmRule 告警规则
     * @return 结果
     */
    public int updateAlarmRule(@Param("ar")AlarmRuleE alarmRule);

    /**
     * 根据告警编号删除告警规则
     *
     * @param alarmRuleId 告警规则编号
     * @return 结果
     */
    public int deleteAlarmRuleById(@Param("arid")Long alarmRuleId);
}