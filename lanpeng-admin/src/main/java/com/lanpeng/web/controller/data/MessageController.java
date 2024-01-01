package com.lanpeng.web.controller.data;

import com.lanpeng.common.annotation.Log;
import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.common.core.page.TableDataInfo;
import com.lanpeng.common.enums.BusinessType;
import com.lanpeng.data.domain.MessageE;
import com.lanpeng.data.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 消息
 *
 * @author liw
 */
@RestController
@RequestMapping("/message")
public class MessageController extends BaseController
{
    @Autowired
    private IMessageService messageService;

    /**
     * 获取消息
     */
    @GetMapping("/list")
    public TableDataInfo list(MessageE message)
    {
        startPage();
        List<MessageE> list = messageService.selectMessageList(message);
        return getDataTable(list);
    }

    /**
     * 根据消息编号获取消息
     */
    @GetMapping(value = "/query/{messageId}")
    public AjaxResult getInfo(@PathVariable Long messageId)
    {
        return success(messageService.selectMessageById(messageId));
    }

    /**
     * 新增消息
     */
    @Log(title = "消息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody MessageE message)
    {
        //message.setCreateBy(getUsername());
        return toAjax(messageService.insertMessage(message));
    }

    /**
     * 修改消息
     */
    @Log(title = "消息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody MessageE message)
    {
        //message.setUpdateBy(getUsername());
        return toAjax(messageService.updateMessage(message));
    }

    /**
     * 删除消息
     */
    @Log(title = "消息", businessType = BusinessType.DELETE)
    @DeleteMapping("/remove/{messageIds}")
    public AjaxResult remove(@PathVariable Long[] messageIds)
    {
        return toAjax(messageService.deleteMessageByIds(messageIds));
    }
}