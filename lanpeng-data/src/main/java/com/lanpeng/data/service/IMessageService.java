package com.lanpeng.data.service;

import com.lanpeng.data.domain.MessageE;

import java.util.List;

public interface IMessageService
{
    /**
     * 查询消息
     *
     * @param messageId 消息编号
     * @return 消息
     */
    public MessageE selectMessageById(Long messageId);

    /**
     * 查询消息
     *
     * @param message 消息
     * @return 消息集合
     */
    public List<MessageE> selectMessageList(MessageE message);

    /**
     * 新增消息
     *
     * @param message 消息
     * @return 结果
     */
    public int insertMessage(MessageE message);

    /**
     * 修改消息
     *
     * @param message 消息
     * @return 结果
     */
    public int updateMessage(MessageE message);

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