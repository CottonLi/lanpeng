package com.lanpeng.web.controller.data;

import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.domain.DBConnectionE;
import com.lanpeng.data.domain.DBConnectionTypeE;
import com.lanpeng.data.domain.DataStorageE;
import com.lanpeng.data.domain.DataStorageItemE;
import com.lanpeng.data.service.IDataStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 数据存储管理
 *
 * @author liw
 */
@RestController
@RequestMapping("/datastorage")
public class DataStorageController extends BaseController
{
    @Autowired
    private IDataStorageService dataStorageService;

    /**
     * 获取所有的数据库连接类型
     */
    @GetMapping("/dbconnectiontype/list")
    public AjaxResult dbconnectiontypelist()
    {
        List<DBConnectionTypeE> items = dataStorageService.selectAllDBConnectionTypes();
        return success(items);
    }

    /**
     * 获取所有的数据库连接
     */
    @GetMapping("/dbconnection/list")
    public AjaxResult dbconnectionlist()
    {
        List<DBConnectionE> items = dataStorageService.selectAllDBConnections();
        return success(items);
    }

    /**
     * 获取所有的数据存储
     */
    @GetMapping("/list")
    public AjaxResult datastoragelist()
    {
        List<DataStorageE> items = dataStorageService.selectAllDataStorages();
        return success(items);
    }

    /**
     * 根据数据存储编号获取所有的数据存储条目内容
     */
    @GetMapping(value = "/query/{id}")
    public AjaxResult getdatastorageitemsbydatastorageid(@PathVariable Long id)
    {
        return success(dataStorageService.selectDataStorageItemsByDataStorageId(id));
    }

    /**
     * 新增数据库连接
     */
    @Log(title = "数据库连接管理", businessType = BusinessType.INSERT)
    @PostMapping("/dbconnection")
    public AjaxResult adddbconnection(@Validated @RequestBody DBConnectionE dbconnection)
    {
        return toAjax(dataStorageService.insertDBConnection(dbconnection));
    }

    /**
     * 修改数据库连接
     */
    @Log(title = "数据库连接管理", businessType = BusinessType.UPDATE)
    @PutMapping("/dbconnection")
    public AjaxResult editdbconnection(@Validated @RequestBody DBConnectionE dbconnection)
    {
        return toAjax(dataStorageService.updateDBConnection(dbconnection));
    }

    /**
     * 删除数据库连接
     */
    @Log(title = "数据库连接管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/dbconnection/remove/{id}")
    public AjaxResult removedbconnection(@PathVariable Long id)
    {
        return toAjax(dataStorageService.deleteDBConnectionById(id));
    }

    /**
     * 新增数据存储
     */
    @Log(title = "数据存储管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult adddatastorage(@Validated @RequestBody DataStorageE dataStorage)
    {
        return toAjax(dataStorageService.insertDataStorage(dataStorage));
    }

    /**
     * 修改数据存储
     */
    @Log(title = "数据存储管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult editdatastorage(@Validated @RequestBody DataStorageE dataStorage)
    {
        return toAjax(dataStorageService.updateDataStorage(dataStorage));
    }

    /**
     * 删除数据存储
     */
    @Log(title = "数据存储管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/remove/{id}")
    public AjaxResult removedatastorage(@PathVariable Long id)
    {
        return toAjax(dataStorageService.deleteDataStorageById(id));
    }

    /**
     * 新增数据存储条目
     */
    @Log(title = "数据存储管理", businessType = BusinessType.INSERT)
    @PostMapping("/item")
    public AjaxResult adddatastorageitem(@Validated @RequestBody DataStorageItemE dataStorageItem)
    {
        return toAjax(dataStorageService.insertDataStorageItem(dataStorageItem));
    }

    /**
     * 修改数据存储条目
     */
    @Log(title = "数据存储管理", businessType = BusinessType.UPDATE)
    @PutMapping("/item")
    public AjaxResult editdatastorageitem(@Validated @RequestBody DataStorageItemE dataStorageItem)
    {
        return toAjax(dataStorageService.updateDataStorageItem(dataStorageItem));
    }

    /**
     * 删除数据存储条目
     */
    @Log(title = "数据存储管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/item/remove/{id}")
    public AjaxResult removedatastorageitem(@PathVariable Long id)
    {
        return toAjax(dataStorageService.deleteDataStorageItemById(id));
    }
}