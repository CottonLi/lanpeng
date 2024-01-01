package com.lanpeng.web.controller.data;

import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.data.domain.DataItemE;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.service.IDataItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 数据管理
 *
 * @author liw
 */
@RestController
@RequestMapping("/dataitem")
public class DataItemController extends BaseController
{

    @Autowired
    private IDataItemService dataItemervice;

    /**
     * 获取数据列表
     */
    @GetMapping("/list")
    public AjaxResult list()
    {
        List<DataItemE> items = dataItemervice.selectDataItemList();
        return success(items);
    }

    /**
     * 根据数据编号获取详细信息
     */
    @GetMapping(value = "/query/{id}")
    public AjaxResult getInfo(@PathVariable Long id)
    {
        return success(dataItemervice.selectDataItemById(id));
    }

    /**
     * 添加数据
     */
    @Log(title = "数据管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody DataItemE dataItem)
    {
        return toAjax(dataItemervice.insertDataItem(dataItem));
    }

    /**
     * 修改数据
     */
    @Log(title = "数据管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody DataItemE dataItem)
    {
        return toAjax(dataItemervice.updateDataItem(dataItem));
    }

    /**
     * 删除数据
     */
    @Log(title = "数据管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/remove/{id}")
    public AjaxResult remove(@PathVariable Long id)
    {
        return toAjax(dataItemervice.deleteDataItemById(id));
    }
}