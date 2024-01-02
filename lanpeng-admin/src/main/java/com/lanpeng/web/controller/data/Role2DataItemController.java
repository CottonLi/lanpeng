package com.lanpeng.web.controller.data;

import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.service.IRole2DataItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/role2dataitem")
public class Role2DataItemController extends BaseController
{
    @Autowired
    private IRole2DataItemService role2DataItemService;

    /**
     * 根据用户编号获取所有关联的数据项
     */
    @GetMapping(value = "/queryuserid/{userId}")
    public AjaxResult getInfoByUserId(@PathVariable Long userId)
    {
        return success(role2DataItemService.getDataItemsByUserId(userId));
    }

    /**
     * 根据角色编号获取所有关联的数据项
     */
    @GetMapping(value = "/queryroleid/{roleId}")
    public AjaxResult getInfoByRoleId(@PathVariable Long roleId)
    {
        return success(role2DataItemService.getDataItemsByRoleId(roleId));
    }

    /**
     * 更改角色和数据项的关联
     */
    @Log(title = "角色关联数据项", businessType = BusinessType.GRANT)
    @PutMapping
    public AjaxResult add(Long roleID, Long[] dataItemIds)
    {
        return toAjax(role2DataItemService.updateDataItemsByRoleId(roleID,dataItemIds));
    }

    /**
     * 清除角色编号关联的所有数据项
     */
    @Log(title = "角色关联数据项", businessType = BusinessType.DELETE)
    @DeleteMapping("/remove/{roleId}")
    public AjaxResult remove(@PathVariable Long roleId)
    {
        return toAjax(role2DataItemService.deleteDataItemByRoleId(roleId));
    }
}