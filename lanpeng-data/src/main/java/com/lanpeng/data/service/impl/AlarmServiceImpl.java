package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.AlarmConditionE;
import com.lanpeng.data.domain.AlarmE;
import com.lanpeng.data.domain.AlarmRuleE;
import com.lanpeng.data.mapper.AlarmMapper;
import com.lanpeng.data.mapper.AlarmRuleMapper;
import com.lanpeng.data.service.IAlarmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlarmServiceImpl implements IAlarmService
{
    @Autowired
    private AlarmRuleMapper alarmRuleMapper;

    @Autowired
    private AlarmMapper alarmMapper;

    /**
     * 查询告警规则
     *
     * @return 告警规则集合
     */
    @Override
    public List<AlarmRuleE> selectAlarmRuleList()
    {
        return alarmRuleMapper.selectAlarmRuleList();
    }

    /**
     * 按照告警规则编号查找告警规则
     *
     * @param alarmRuleId 告警规则编号
     * @return 告警规则
     */
    @Override
    public AlarmRuleE selectAlarmRuleById(Long alarmRuleId)
    {
        return alarmRuleMapper.selectAlarmRuleById(alarmRuleId);
    }

    /**
     * 添加告警规则
     *
     * @param alarmRule 告警规则
     * @return 结果
     */
    @Override
    public int insertAlarmRule(AlarmRuleE alarmRule)
    {
        return alarmRuleMapper.insertAlarmRule(alarmRule);
    }

    /**
     * 更新告警规则
     *
     * @param alarmRule 告警规则
     * @return 结果
     */
    @Override
    public int updateAlarmRule(AlarmRuleE alarmRule)
    {
        return alarmRuleMapper.updateAlarmRule(alarmRule);
    }

    /**
     * 根据告警编号删除告警规则
     *
     * @param alarmRuleId 告警规则编号
     * @return 结果
     */
    @Override
    public int deleteAlarmRuleById(Long alarmRuleId)
    {
        return alarmRuleMapper.deleteAlarmRuleById(alarmRuleId);
    }

    /**
     * 按照条件查询告警
     *
     * @return 告警集合
     */
    @Override
    public List<AlarmE> selectAlarmList(AlarmConditionE alarmCondition)
    {
        return alarmMapper.selectAlarmList(alarmCondition);
    }

    /**
     * 插入一条告警
     * @param alarm 告警
     * @return 结果
     */
    @Override
    public int insertAlarm(AlarmE alarm)
    {
        return alarmMapper.insertAlarm(alarm);
    }

    /**
     * 处理一条告警（其实就是修改它的状态）
     * @param alarm 告警
     * @return 结果
     */
    @Override
    public int changeAlarmStatus(AlarmE alarm)
    {
        return alarmMapper.changeAlarmStatus(alarm);
    }

    /**
     * 按照告警编号删除一条告警
     * @param alarmId 告警编号
     * @return 结果
     */
    @Override
    public int deleteAlarmById(Long alarmId)
    {
        return alarmMapper.deleteAlarmById(alarmId);
    }
}