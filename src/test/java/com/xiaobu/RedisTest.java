package com.xiaobu;

import com.xiaobu.entity.City;
import com.xiaobu.mapper.CountryMapper;
import com.xiaobu.service.CountryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 20:20
 * @description V1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class RedisTest {

    @Autowired
    private CountryMapper countryMapper;
    @Autowired
    CountryService countryService;

    @Autowired
    private RedisTemplate redisTemplate;

    @Test
    public  void test(){
        City city=new City();
        city.setName("xiaobu");
        city.setState("深圳");
        city.setId(123);
        redisTemplate.opsForValue().set("city", city);
        City city1 = (City) redisTemplate.opsForValue().get("city");
        System.out.println("city1 = " + city1);

    }



}
