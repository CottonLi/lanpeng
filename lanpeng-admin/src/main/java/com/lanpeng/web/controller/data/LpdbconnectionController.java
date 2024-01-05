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
import com.lanpeng.data.domain.Lpdbconnection;
import com.lanpeng.data.service.ILpdbconnectionService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * lpdbconnectionController
 * 
 * @author liw
 * @date 2024-01-04
 */
@RestController
@RequestMapping("/lpdatastorage/lpdbconnection")
public class LpdbconnectionController extends BaseController
{
    @Autowired
    private ILpdbconnectionService lpdbconnectionService;

    /**
     * 查询lpdbconnection列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnection:list')")
    @GetMapping("/list")
    public TableDataInfo list(Lpdbconnection lpdbconnection)
    {
        startPage();
        List<Lpdbconnection> list = lpdbconnectionService.selectLpdbconnectionList(lpdbconnection);
        return getDataTable(list);
    }

    /**
     * 导出lpdbconnection列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnection:export')")
    @Log(title = "lpdbconnection", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Lpdbconnection lpdbconnection)
    {
        List<Lpdbconnection> list = lpdbconnectionService.selectLpdbconnectionList(lpdbconnection);
        ExcelUtil<Lpdbconnection> util = new ExcelUtil<Lpdbconnection>(Lpdbconnection.class);
        util.exportExcel(response, list, "lpdbconnection数据");
    }

    /**
     * 获取lpdbconnection详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnection:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpdbconnectionService.selectLpdbconnectionById(id));
    }

    /**
     * 新增lpdbconnection
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnection:add')")
    @Log(title = "lpdbconnection", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpdbconnection lpdbconnection)
    {
        return toAjax(lpdbconnectionService.insertLpdbconnection(lpdbconnection));
    }

    /**
     * 修改lpdbconnection
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnection:edit')")
    @Log(title = "lpdbconnection", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpdbconnection lpdbconnection)
    {
        return toAjax(lpdbconnectionService.updateLpdbconnection(lpdbconnection));
    }

    /**
     * 删除lpdbconnection
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnection:remove')")
    @Log(title = "lpdbconnection", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpdbconnectionService.deleteLpdbconnectionByIds(ids));
    }
}
