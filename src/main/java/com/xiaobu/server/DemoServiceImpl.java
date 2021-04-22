package com.xiaobu.server;

import com.alibaba.fastjson.JSON;
import com.xiaobu.entity.Country;
import com.xiaobu.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.jws.WebService;
import java.util.List;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/23 9:03
 * @description V1.0  命名空间 默认为接口类所在包的逆序
 * 如要指定服务名称则接口和实现类的须一致@WebService(name="demo") @WebService(endpointInterface = "com.xiaobu.server.DemoService",serviceName = "demo")
 */
@WebService(endpointInterface = "com.xiaobu.server.DemoService")
@Component
public class DemoServiceImpl implements DemoService {
    @Autowired
    CountryService countryService;

    @Override
    public String demo(String name) {
        return "hello:"+name;
    }

    @Override
    public String demo2(int page) {
        Country country = new Country();
         country.setPage(page);
     List<Country> countries= countryService.getAllByWeekend(country);
        return JSON.toJSONString(countries);
    }


}
