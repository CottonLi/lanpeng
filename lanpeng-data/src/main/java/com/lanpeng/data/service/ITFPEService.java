package com.lanpeng.data.service;

import com.lanpeng.data.domain.TFPE;

public interface ITFPEService
{
    public void addT(TFPE tfp);

    public void updateT(TFPE tfp);

    public void deleteT(Integer id);

    public TFPE getbyidT(Integer id);
}