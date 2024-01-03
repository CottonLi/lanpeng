package com.lanpeng.data.service;

import com.lanpeng.data.domain.Message;

import java.util.List;

public interface IMessageService
{
    /**
     * 查询消息
     *
     * @param messageId 消息编号
     * @return 消息
     */
    public Message selectMessageById(Long messageId);

    /**
     * 查询消息
     *
     * @param message 消息
     * @return 消息集合
     */
    public List<Message> selectMessageList(Message message);

    /**
     * 新增消息
     *
     * @param message 消息
     * @return 结果
     */
    public int insertMessage(Message message);

    /**
     * 修改消息
     *
     * @param message 消息
     * @return 结果
     */
    public int updateMessage(Message message);

    /**
     * 删除消息
     *
     * @param messageId 消息编号
     * @return 结果
     */
    public int deleteMessageById(Long messageId);

    /**
     * 批量删除消息
     *
     * @param messageIds 需要删除的消息编号
     * @return 结果
     */
    public int deleteMessageByIds(Long[] messageIds);
}