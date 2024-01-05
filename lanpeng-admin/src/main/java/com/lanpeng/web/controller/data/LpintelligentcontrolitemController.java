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
import com.lanpeng.data.domain.Lpintelligentcontrolitem;
import com.lanpeng.data.service.ILpintelligentcontrolitemService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * 智能控制项Controller
 * 
 * @author liw
 * @date 2024-01-05
 */
@RestController
@RequestMapping("/lpintelligentcontrol/lpintelligentcontrolitem")
public class LpintelligentcontrolitemController extends BaseController
{
    @Autowired
    private ILpintelligentcontrolitemService lpintelligentcontrolitemService;

    /**
     * 查询智能控制项列表
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrolitem:list')")
    @GetMapping("/list/{id}")
    public TableDataInfo list(@PathVariable("id") Long id)
    {
        startPage();
        List<Lpintelligentcontrolitem> list = lpintelligentcontrolitemService.selectLpintelligentcontrolitemList(id);
        return getDataTable(list);
    }

    /**
     * 导出智能控制项列表
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrolitem:export')")
    @Log(title = "智能控制项", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Long id)
    {
        List<Lpintelligentcontrolitem> list = lpintelligentcontrolitemService.selectLpintelligentcontrolitemList(id);
        ExcelUtil<Lpintelligentcontrolitem> util = new ExcelUtil<Lpintelligentcontrolitem>(Lpintelligentcontrolitem.class);
        util.exportExcel(response, list, "智能控制项数据");
    }

    /**
     * 获取智能控制项详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrolitem:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpintelligentcontrolitemService.selectLpintelligentcontrolitemById(id));
    }

    /**
     * 新增智能控制项
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrolitem:add')")
    @Log(title = "智能控制项", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpintelligentcontrolitem lpintelligentcontrolitem)
    {
        return toAjax(lpintelligentcontrolitemService.insertLpintelligentcontrolitem(lpintelligentcontrolitem));
    }

    /**
     * 修改智能控制项
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrolitem:edit')")
    @Log(title = "智能控制项", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpintelligentcontrolitem lpintelligentcontrolitem)
    {
        return toAjax(lpintelligentcontrolitemService.updateLpintelligentcontrolitem(lpintelligentcontrolitem));
    }

    /**
     * 删除智能控制项
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrolitem:remove')")
    @Log(title = "智能控制项", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpintelligentcontrolitemService.deleteLpintelligentcontrolitemByIds(ids));
    }
}
