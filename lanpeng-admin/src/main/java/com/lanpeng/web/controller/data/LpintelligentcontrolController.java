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
import com.lanpeng.data.domain.Lpintelligentcontrol;
import com.lanpeng.data.service.ILpintelligentcontrolService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * 智能控制Controller
 * 
 * @author liw
 * @date 2024-01-05
 */
@RestController
@RequestMapping("/lpintelligentcontrol/lpintelligentcontrol")
public class LpintelligentcontrolController extends BaseController
{
    @Autowired
    private ILpintelligentcontrolService lpintelligentcontrolService;

    /**
     * 查询智能控制列表
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrol:list')")
    @GetMapping("/list")
    public TableDataInfo list(Lpintelligentcontrol lpintelligentcontrol)
    {
        startPage();
        List<Lpintelligentcontrol> list = lpintelligentcontrolService.selectLpintelligentcontrolList(lpintelligentcontrol);
        return getDataTable(list);
    }

    /**
     * 导出智能控制列表
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrol:export')")
    @Log(title = "智能控制", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Lpintelligentcontrol lpintelligentcontrol)
    {
        List<Lpintelligentcontrol> list = lpintelligentcontrolService.selectLpintelligentcontrolList(lpintelligentcontrol);
        ExcelUtil<Lpintelligentcontrol> util = new ExcelUtil<Lpintelligentcontrol>(Lpintelligentcontrol.class);
        util.exportExcel(response, list, "智能控制数据");
    }

    /**
     * 获取智能控制详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrol:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpintelligentcontrolService.selectLpintelligentcontrolById(id));
    }

    /**
     * 新增智能控制
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrol:add')")
    @Log(title = "智能控制", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpintelligentcontrol lpintelligentcontrol)
    {
        return toAjax(lpintelligentcontrolService.insertLpintelligentcontrol(lpintelligentcontrol));
    }

    /**
     * 修改智能控制
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrol:edit')")
    @Log(title = "智能控制", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpintelligentcontrol lpintelligentcontrol)
    {
        return toAjax(lpintelligentcontrolService.updateLpintelligentcontrol(lpintelligentcontrol));
    }

    /**
     * 删除智能控制
     */
    @PreAuthorize("@ss.hasPermi('lpintelligentcontrol:lpintelligentcontrol:remove')")
    @Log(title = "智能控制", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpintelligentcontrolService.deleteLpintelligentcontrolByIds(ids));
    }
}
