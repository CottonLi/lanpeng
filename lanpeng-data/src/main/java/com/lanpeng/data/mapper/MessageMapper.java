package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.MessageE;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 通知公告表 数据层
 *
 * @author liw
 */
@Mapper
public interface MessageMapper
{
    /**
     * 按照消息编号查询消息
     *
     * @param messageId 消息编号
     * @return 消息
     */
    public MessageE selectMessageById(@Param("mid")Long messageId);

    /**
     * 查询消息
     *
     * @param message 消息
     * @return 消息集合
     */
    public List<MessageE> selectMessageList(@Param("m")MessageE message);

    /**
     * 新增消息
     *
     * @param message 消息
     * @return 结果
     */
    public int insertMessage(@Param("m")MessageE message);

    /**
     * 修改消息
     *
     * @param message 消息
     * @return 结果
     */
    public int updateMessage(@Param("m")MessageE message);

    /**
     * 删除消息
     *
     * @param messageId 消息编号
     * @return 结果
     */
    public int deleteMessageById(@Param("mid")Long messageId);

    /**
     * 批量删除消息
     *
     * @param messageIds 消息编号
     * @return 结果
     */
    public int deleteMessageByIds(@Param("mids")Long[] messageIds);
}