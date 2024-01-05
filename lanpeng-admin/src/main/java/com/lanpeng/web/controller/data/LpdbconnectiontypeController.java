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
import com.lanpeng.data.domain.Lpdbconnectiontype;
import com.lanpeng.data.service.ILpdbconnectiontypeService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * lpdbconnectiontypeController
 * 
 * @author liw
 * @date 2024-01-04
 */
@RestController
@RequestMapping("/lpdatastorage/lpdbconnectiontype")
public class LpdbconnectiontypeController extends BaseController
{
    @Autowired
    private ILpdbconnectiontypeService lpdbconnectiontypeService;

    /**
     * 查询lpdbconnectiontype列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnectiontype:list')")
    @GetMapping("/list")
    public TableDataInfo list(Lpdbconnectiontype lpdbconnectiontype)
    {
        startPage();
        List<Lpdbconnectiontype> list = lpdbconnectiontypeService.selectLpdbconnectiontypeList(lpdbconnectiontype);
        return getDataTable(list);
    }

    /**
     * 导出lpdbconnectiontype列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnectiontype:export')")
    @Log(title = "lpdbconnectiontype", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Lpdbconnectiontype lpdbconnectiontype)
    {
        List<Lpdbconnectiontype> list = lpdbconnectiontypeService.selectLpdbconnectiontypeList(lpdbconnectiontype);
        ExcelUtil<Lpdbconnectiontype> util = new ExcelUtil<Lpdbconnectiontype>(Lpdbconnectiontype.class);
        util.exportExcel(response, list, "lpdbconnectiontype数据");
    }

    /**
     * 获取lpdbconnectiontype详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnectiontype:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpdbconnectiontypeService.selectLpdbconnectiontypeById(id));
    }

    /**
     * 新增lpdbconnectiontype
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnectiontype:add')")
    @Log(title = "lpdbconnectiontype", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpdbconnectiontype lpdbconnectiontype)
    {
        return toAjax(lpdbconnectiontypeService.insertLpdbconnectiontype(lpdbconnectiontype));
    }

    /**
     * 修改lpdbconnectiontype
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnectiontype:edit')")
    @Log(title = "lpdbconnectiontype", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpdbconnectiontype lpdbconnectiontype)
    {
        return toAjax(lpdbconnectiontypeService.updateLpdbconnectiontype(lpdbconnectiontype));
    }

    /**
     * 删除lpdbconnectiontype
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdbconnectiontype:remove')")
    @Log(title = "lpdbconnectiontype", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpdbconnectiontypeService.deleteLpdbconnectiontypeByIds(ids));
    }
}
