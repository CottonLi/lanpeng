package com.lanpeng.web.controller.data;

import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.domain.DataStorageE;
import com.lanpeng.data.domain.DataStorageItemE;
import com.lanpeng.data.domain.IntelligentControlE;
import com.lanpeng.data.domain.IntelligentControlItemE;
import com.lanpeng.data.service.IIntelligentControlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/intelligentcontrol")
public class IntelligentControlController extends BaseController
{
    @Autowired
    private IIntelligentControlService intelligentControlService;

    /**
     * 获取所有的智能控制
     */
    @GetMapping("/list")
    public AjaxResult intelligentcontrollist()
    {
        List<IntelligentControlE> items = intelligentControlService.selectAllIntelligentControls();
        return success(items);
    }

    /**
     * 根据智能控制编号获取所有的智能控制条目内容
     */
    @GetMapping(value = "/query/{id}")
    public AjaxResult getintelligentcontrolitemsbyintelligentcontrolid(@PathVariable Long id)
    {
        return success(intelligentControlService.selectIntelligentControlItemsByIntelligentControlId(id));
    }

    /**
     * 新增智能控制
     */
    @Log(title = "智能控制管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult addintelligentcontrol(@Validated @RequestBody IntelligentControlE intelligentControl)
    {
        return toAjax(intelligentControlService.insertIntelligentControl(intelligentControl));
    }

    /**
     * 修改智能控制
     */
    @Log(title = "智能控制管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult editintelligentcontrol(@Validated @RequestBody IntelligentControlE intelligentControl)
    {
        return toAjax(intelligentControlService.updateIntelligentControl(intelligentControl));
    }

    /**
     * 删除智能控制
     */
    @Log(title = "智能控制管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/remove/{id}")
    public AjaxResult removeintelligentcontrol(@PathVariable Long id)
    {
        return toAjax(intelligentControlService.deleteIntelligentControlById(id));
    }

    /**
     * 新增智能控制条目
     */
    @Log(title = "智能控制管理", businessType = BusinessType.INSERT)
    @PostMapping("/item")
    public AjaxResult addintelligentcontrolitem(@Validated @RequestBody IntelligentControlItemE intelligentControlItem)
    {
        return toAjax(intelligentControlService.insertIntelligentControlItem(intelligentControlItem));
    }

    /**
     * 修改智能控制条目
     */
    @Log(title = "智能控制管理", businessType = BusinessType.UPDATE)
    @PutMapping("/item")
    public AjaxResult editintelligentcontrolitem(@Validated @RequestBody IntelligentControlItemE intelligentControlItem)
    {
        return toAjax(intelligentControlService.updateIntelligentControlItem(intelligentControlItem));
    }

    /**
     * 删除智能控制条目
     */
    @Log(title = "智能控制管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/item/remove/{id}")
    public AjaxResult removeintelligentcontrolitem(@PathVariable Long id)
    {
        return toAjax(intelligentControlService.deleteIntelligentControlItemById(id));
    }
}