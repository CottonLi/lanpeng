package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.Message;
import com.lanpeng.data.mapper.MessageMapper;
import com.lanpeng.data.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class MessageServiceImpl implements IMessageService
{
    @Autowired
    private MessageMapper messageMapper;

    /**
     * 查询消息
     *
     * @param messageId 消息编号
     * @return 消息
     */
    @Override
    public Message selectMessageById(Long messageId)
    {
        return messageMapper.selectMessageById(messageId);
    }

    /**
     * 查询消息
     *
     * @param message 消息
     * @return 消息
     */
    @Override
    public List<Message> selectMessageList(Message message)
    {
        return messageMapper.selectMessageList(message);
    }

    /**
     * 新增消息
     *
     * @param message 消息
     * @return 结果
     */
    @Override
    public int insertMessage(Message message)
    {
        return messageMapper.insertMessage(message);
    }

    /**
     * 修改消息
     *
     * @param message 消息
     * @return 结果
     */
    @Override
    public int updateMessage(Message message)
    {
        return messageMapper.updateMessage(message);
    }

    /**
     * 删除消息
     *
     * @param messageId 消息编号
     * @return 结果
     */
    @Override
    public int deleteMessageById(Long messageId)
    {
        return messageMapper.deleteMessageById(messageId);
    }

    /**
     * 批量删除消息
     *
     * @param messageIds 需要删除的消息编号
     * @return 结果
     */
    @Override
    public int deleteMessageByIds(Long[] messageIds)
    {
        return messageMapper.deleteMessageByIds(messageIds);
    }
}