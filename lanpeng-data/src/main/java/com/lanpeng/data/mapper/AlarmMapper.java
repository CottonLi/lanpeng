package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.AlarmCondition;
import com.lanpeng.data.domain.Alarm;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 告警表 数据层
 *
 * @author liw
 */
@Mapper
public interface AlarmMapper
{
    /**
     * 按照条件查询告警
     *
     * @return 告警集合
     */
    public List<Alarm> selectAlarmList(@Param("ac") AlarmCondition alarmCondition);

    /**
     * 插入一条告警
     * @param alarm 告警
     * @return 结果
     */
    public int insertAlarm(@Param("a") Alarm alarm);

    /**
     * 处理一条告警（其实就是修改它的状态）
     * @param alarm 告警
     * @return 结果
     */
    public int changeAlarmStatus(@Param("a") Alarm alarm);

    /**
     * 按照告警编号删除一条告警
     * @param alarmId 告警编号
     * @return 结果
     */
    public int deleteAlarmById(@Param("aid")Long alarmId);
}