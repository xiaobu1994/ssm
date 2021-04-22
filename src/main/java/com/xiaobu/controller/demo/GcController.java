package com.xiaobu.controller.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/5/22 11:41
 * @description V1.0 GC示例
 */
@RestController
@RequestMapping("gc")
public class GcController {

    @RequestMapping("test")
    public String test(){
        Map map = System.getProperties();
        ThreadLocalRandom threadLocalRandom = ThreadLocalRandom.current();
        int i=0;
        while (true){
            i++;
            map.put(threadLocalRandom.nextInt(), "value");
            System.out.println("执行了 " + i+"次");
        }
    }
}
