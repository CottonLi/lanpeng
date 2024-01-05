package com.lanpeng.data.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.domain.Lpdatastorageitem;
import com.lanpeng.data.service.ILpdatastorageitemService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * 数据存储项Controller
 * 
 * @author liw
 * @date 2024-01-04
 */
@RestController
@RequestMapping("/lpdatastorage/lpdatastorageitem")
public class LpdatastorageitemController extends BaseController
{
    @Autowired
    private ILpdatastorageitemService lpdatastorageitemService;

    /**
     * 查询数据存储项列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorageitem:list')")
    @GetMapping("/list/{id}")
    public TableDataInfo list(@PathVariable("id") Long id)
    {
        startPage();
        List<Lpdatastorageitem> list = lpdatastorageitemService.selectLpdatastorageitemList(id);
        return getDataTable(list);
    }

    /**
     * 导出数据存储项列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorageitem:export')")
    @Log(title = "数据存储项", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Long id)
    {
        List<Lpdatastorageitem> list = lpdatastorageitemService.selectLpdatastorageitemList(id);
        ExcelUtil<Lpdatastorageitem> util = new ExcelUtil<Lpdatastorageitem>(Lpdatastorageitem.class);
        util.exportExcel(response, list, "数据存储项数据");
    }

    /**
     * 获取数据存储项详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorageitem:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpdatastorageitemService.selectLpdatastorageitemById(id));
    }

    /**
     * 新增数据存储项
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorageitem:add')")
    @Log(title = "数据存储项", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpdatastorageitem lpdatastorageitem)
    {
        return toAjax(lpdatastorageitemService.insertLpdatastorageitem(lpdatastorageitem));
    }

    /**
     * 修改数据存储项
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorageitem:edit')")
    @Log(title = "数据存储项", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpdatastorageitem lpdatastorageitem)
    {
        return toAjax(lpdatastorageitemService.updateLpdatastorageitem(lpdatastorageitem));
    }

    /**
     * 删除数据存储项
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorageitem:remove')")
    @Log(title = "数据存储项", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpdatastorageitemService.deleteLpdatastorageitemByIds(ids));
    }
}
