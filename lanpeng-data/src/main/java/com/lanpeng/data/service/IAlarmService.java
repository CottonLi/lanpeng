package com.lanpeng.data.service;

import com.lanpeng.data.domain.AlarmConditionE;
import com.lanpeng.data.domain.AlarmE;
import com.lanpeng.data.domain.AlarmRuleE;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface IAlarmService
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
    public AlarmRuleE selectAlarmRuleById(Long alarmRuleId);

    /**
     * 添加告警规则
     *
     * @param alarmRule 告警规则
     * @return 结果
     */
    public int insertAlarmRule(AlarmRuleE alarmRule);

    /**
     * 更新告警规则
     *
     * @param alarmRule 告警规则
     * @return 结果
     */
    public int updateAlarmRule(AlarmRuleE alarmRule);

    /**
     * 根据告警编号删除告警规则
     *
     * @param alarmRuleId 告警规则编号
     * @return 结果
     */
    public int deleteAlarmRuleById(Long alarmRuleId);

    /**
     * 按照条件查询告警
     *
     * @return 告警集合
     */
    public List<AlarmE> selectAlarmList(AlarmConditionE alarmCondition);

    /**
     * 插入一条告警
     * @param alarm 告警
     * @return 结果
     */
    public int insertAlarm(AlarmE alarm);

    /**
     * 处理一条告警（其实就是修改它的状态）
     * @param alarm 告警
     * @return 结果
     */
    public int changeAlarmStatus(AlarmE alarm);

    /**
     * 按照告警编号删除一条告警
     * @param alarmId 告警编号
     * @return 结果
     */
    public int deleteAlarmById(Long alarmId);
}