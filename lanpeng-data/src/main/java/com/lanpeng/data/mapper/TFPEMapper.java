package com.lanpeng.data.mapper;

import com.lanpeng.data.domain.TFPE;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TFPEMapper
{
    public void addT(TFPE tfp);

    public void updateT(TFPE tfp);

    public void deleteT(Integer id);

    public TFPE getbyidT(Integer id);
}