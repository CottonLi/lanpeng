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
import com.lanpeng.data.domain.Lpmoduleinfo;
import com.lanpeng.data.service.ILpmoduleinfoService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * 组件Controller
 * 
 * @author liw
 * @date 2024-01-04
 */
@RestController
@RequestMapping("/lpmoduleinfo/lpmoduleinfo")
public class LpmoduleinfoController extends BaseController
{
    @Autowired
    private ILpmoduleinfoService lpmoduleinfoService;

    /**
     * 查询组件列表
     */
    @PreAuthorize("@ss.hasPermi('lpmoduleinfo:lpmoduleinfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(Lpmoduleinfo lpmoduleinfo)
    {
        startPage();
        List<Lpmoduleinfo> list = lpmoduleinfoService.selectLpmoduleinfoList(lpmoduleinfo);
        return getDataTable(list);
    }

    /**
     * 导出组件列表
     */
    @PreAuthorize("@ss.hasPermi('lpmoduleinfo:lpmoduleinfo:export')")
    @Log(title = "组件", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Lpmoduleinfo lpmoduleinfo)
    {
        List<Lpmoduleinfo> list = lpmoduleinfoService.selectLpmoduleinfoList(lpmoduleinfo);
        ExcelUtil<Lpmoduleinfo> util = new ExcelUtil<Lpmoduleinfo>(Lpmoduleinfo.class);
        util.exportExcel(response, list, "组件数据");
    }

    /**
     * 获取组件详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpmoduleinfo:lpmoduleinfo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpmoduleinfoService.selectLpmoduleinfoById(id));
    }

    /**
     * 新增组件
     */
    @PreAuthorize("@ss.hasPermi('lpmoduleinfo:lpmoduleinfo:add')")
    @Log(title = "组件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpmoduleinfo lpmoduleinfo)
    {
        return toAjax(lpmoduleinfoService.insertLpmoduleinfo(lpmoduleinfo));
    }

    /**
     * 修改组件
     */
    @PreAuthorize("@ss.hasPermi('lpmoduleinfo:lpmoduleinfo:edit')")
    @Log(title = "组件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpmoduleinfo lpmoduleinfo)
    {
        return toAjax(lpmoduleinfoService.updateLpmoduleinfo(lpmoduleinfo));
    }

    /**
     * 删除组件
     */
    @PreAuthorize("@ss.hasPermi('lpmoduleinfo:lpmoduleinfo:remove')")
    @Log(title = "组件", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpmoduleinfoService.deleteLpmoduleinfoByIds(ids));
    }
}
