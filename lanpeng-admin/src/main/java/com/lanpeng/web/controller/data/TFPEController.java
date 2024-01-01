package com.lanpeng.web.controller.data;

import com.lanpeng.common.core.controller.BaseController;
import com.lanpeng.common.core.domain.AjaxResult;
import com.lanpeng.data.domain.TFPE;
import com.lanpeng.data.service.ITFPEService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/tfpe")
public class TFPEController extends BaseController
{
    @Autowired
    private ITFPEService tfpeService;

    @GetMapping(value = "/query/{id}")
    public AjaxResult getInfo(@PathVariable Integer id)
    {
        TFPE tfp = new TFPE();
        tfp.setName("小恐龙");
        tfp.setSex("变态");
        tfp.setAge(15);
        tfpeService.addT(tfp);

        tfp.setId(2);

        tfp.setName("小恐龙1");
        tfp.setSex("变态1");
        tfp.setAge(151);

        tfpeService.updateT(tfp);

        tfpeService.deleteT(1);

        return success(tfpeService.getbyidT(id));
    }
}