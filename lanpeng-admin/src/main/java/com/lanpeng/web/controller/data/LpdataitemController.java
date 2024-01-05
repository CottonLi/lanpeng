package com.lanpeng.web.controller.data;

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
import com.lanpeng.data.domain.Lpdataitem;
import com.lanpeng.data.service.ILpdataitemService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * 数据项Controller
 * 
 * @author liw
 * @date 2024-01-04
 */
@RestController
@RequestMapping("/lpdatastorage/lpdataitem")
public class LpdataitemController extends BaseController
{
    @Autowired
    private ILpdataitemService lpdataitemService;

    /**
     * 查询数据项列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdataitem:list')")
    @GetMapping("/list")
    public TableDataInfo list(Lpdataitem lpdataitem)
    {
        startPage();
        List<Lpdataitem> list = lpdataitemService.selectLpdataitemList(lpdataitem);
        return getDataTable(list);
    }

    /**
     * 导出数据项列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdataitem:export')")
    @Log(title = "数据项", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Lpdataitem lpdataitem)
    {
        List<Lpdataitem> list = lpdataitemService.selectLpdataitemList(lpdataitem);
        ExcelUtil<Lpdataitem> util = new ExcelUtil<Lpdataitem>(Lpdataitem.class);
        util.exportExcel(response, list, "数据项数据");
    }

    /**
     * 获取数据项详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdataitem:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpdataitemService.selectLpdataitemById(id));
    }

    /**
     * 新增数据项
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdataitem:add')")
    @Log(title = "数据项", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpdataitem lpdataitem)
    {
        return toAjax(lpdataitemService.insertLpdataitem(lpdataitem));
    }

    /**
     * 修改数据项
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdataitem:edit')")
    @Log(title = "数据项", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpdataitem lpdataitem)
    {
        return toAjax(lpdataitemService.updateLpdataitem(lpdataitem));
    }

    /**
     * 删除数据项
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdataitem:remove')")
    @Log(title = "数据项", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpdataitemService.deleteLpdataitemByIds(ids));
    }
}
