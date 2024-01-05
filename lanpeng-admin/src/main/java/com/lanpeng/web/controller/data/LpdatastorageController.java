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
import com.lanpeng.data.domain.Lpdatastorage;
import com.lanpeng.data.service.ILpdatastorageService;
import com.lanpeng.common.utils.poi.ExcelUtil;
import com.lanpeng.common.core.page.TableDataInfo;

/**
 * 数据存储Controller
 * 
 * @author liw
 * @date 2024-01-04
 */
@RestController
@RequestMapping("/lpdatastorage/lpdatastorage")
public class LpdatastorageController extends BaseController
{
    @Autowired
    private ILpdatastorageService lpdatastorageService;

    /**
     * 查询数据存储列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorage:list')")
    @GetMapping("/list")
    public TableDataInfo list(Lpdatastorage lpdatastorage)
    {
        startPage();
        List<Lpdatastorage> list = lpdatastorageService.selectLpdatastorageList(lpdatastorage);
        return getDataTable(list);
    }

    /**
     * 导出数据存储列表
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorage:export')")
    @Log(title = "数据存储", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Lpdatastorage lpdatastorage)
    {
        List<Lpdatastorage> list = lpdatastorageService.selectLpdatastorageList(lpdatastorage);
        ExcelUtil<Lpdatastorage> util = new ExcelUtil<Lpdatastorage>(Lpdatastorage.class);
        util.exportExcel(response, list, "数据存储数据");
    }

    /**
     * 获取数据存储详细信息
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorage:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(lpdatastorageService.selectLpdatastorageById(id));
    }

    /**
     * 新增数据存储
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorage:add')")
    @Log(title = "数据存储", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Lpdatastorage lpdatastorage)
    {
        return toAjax(lpdatastorageService.insertLpdatastorage(lpdatastorage));
    }

    /**
     * 修改数据存储
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorage:edit')")
    @Log(title = "数据存储", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Lpdatastorage lpdatastorage)
    {
        return toAjax(lpdatastorageService.updateLpdatastorage(lpdatastorage));
    }

    /**
     * 删除数据存储
     */
    @PreAuthorize("@ss.hasPermi('lpdatastorage:lpdatastorage:remove')")
    @Log(title = "数据存储", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(lpdatastorageService.deleteLpdatastorageByIds(ids));
    }
}
