package com.lanpeng.data.service.impl;

import com.lanpeng.data.domain.TFPE;
import com.lanpeng.data.mapper.TFPEMapper;
import com.lanpeng.data.service.ITFPEService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TFPEServiceImpl implements ITFPEService
{
    @Autowired
    private TFPEMapper tfpeMapper;

    @Override
    public void addT(TFPE tfp)
    {
        tfpeMapper.addT(tfp);
    }

    @Override
    public void updateT(TFPE tfp)
    {
        tfpeMapper.updateT(tfp);
    }

    @Override
    public void deleteT(Integer id)
    {
        tfpeMapper.deleteT(id);
    }

    @Override
    public TFPE getbyidT(Integer id)
    {
        return tfpeMapper.getbyidT(id);
    }
}