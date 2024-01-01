package com.lanpeng.web.controller.data;

import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.common.core.page.TableDataInfo;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.domain.AlarmConditionE;
import com.lanpeng.data.domain.AlarmE;
import com.lanpeng.data.domain.AlarmRuleE;
import com.lanpeng.data.service.IAlarmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 告警
 *
 * @author liw
 */
@RestController
@RequestMapping("/alarm")
public class AlarmController extends BaseController
{
    @Autowired
    private IAlarmService alarmService;

    /**
     * 获取告警规则
     */
    @GetMapping("/rule/list")
    public TableDataInfo list()
    {
        startPage();
        List<AlarmRuleE> list = alarmService.selectAlarmRuleList();
        return getDataTable(list);
    }

    /**
     * 根据告警规则编号获取告警规则
     */
    @GetMapping(value = "/rule/query/{alarmRuleId}")
    public AjaxResult getInfo(@PathVariable Long alarmRuleId)
    {
        return success(alarmService.selectAlarmRuleById(alarmRuleId));
    }

    /**
     * 新增告警规则
     */
    @Log(title = "告警", businessType = BusinessType.INSERT)
    @PostMapping("/rule")
    public AjaxResult add(@Validated @RequestBody AlarmRuleE alarmRule)
    {
        //message.setCreateBy(getUsername());
        return toAjax(alarmService.insertAlarmRule(alarmRule));
    }

    /**
     * 修改告警规则
     */
    @Log(title = "告警", businessType = BusinessType.UPDATE)
    @PutMapping("/rule")
    public AjaxResult edit(@Validated @RequestBody AlarmRuleE alarmRule)
    {
        //message.setUpdateBy(getUsername());
        return toAjax(alarmService.updateAlarmRule(alarmRule));
    }

    /**
     * 删除告警规则
     */
    @Log(title = "告警", businessType = BusinessType.DELETE)
    @DeleteMapping("/rule/remove/{alarmRuleId}")
    public AjaxResult remove(@PathVariable Long alarmRuleId)
    {
        return toAjax(alarmService.deleteAlarmRuleById(alarmRuleId));
    }

    /**
     * 按照条件获取报警列表，条件是发生告警的时间范围，告警状态，告警级别，没有不判断
     */
    @GetMapping("/list")
    public TableDataInfo alarmlist(@Validated @RequestBody AlarmConditionE alarmCondition)
    {
        startPage();
        List<AlarmE> list = alarmService.selectAlarmList(alarmCondition);
        return getDataTable(list);
    }

    /**
     * 插入一条告警
     */
    @Log(title = "告警", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult addalarm(@Validated @RequestBody AlarmE alarm)
    {
        //message.setCreateBy(getUsername());
        return toAjax(alarmService.insertAlarm(alarm));
    }

    /**
     * 处理告警
     */
    @Log(title = "告警", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult editalarm(@Validated @RequestBody AlarmE alarm)
    {
        //message.setUpdateBy(getUsername());
        return toAjax(alarmService.changeAlarmStatus(alarm));
    }

    /**
     * 按照告警编号删除报警---好像用不到
     */
    @Log(title = "告警", businessType = BusinessType.DELETE)
    @DeleteMapping("remove/{alarmId}")
    public AjaxResult removealarm(@PathVariable Long alarmId)
    {
        return toAjax(alarmService.deleteAlarmById(alarmId));
    }
}