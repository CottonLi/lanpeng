package com.lanpeng;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author liw
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class LanPengApplication
{
    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(LanPengApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  数据管理平台启动成功   ლ(´ڡ`ლ)ﾞ  \n" +
                " .--.         .-------------     \n" +
                " |  |         |  -------|  |     \n" +
                " |  |         |  |      |  |     \n" +
                " |  |         |  |-------  |     \n" +
                " |  |         |  |---------|     \n" +
                " |  |         |  |               \n" +
                " |  |         |  |               \n" +
                " |  -------|  |  |               \n" +
                " ----------|  .--. ");
    }
}
