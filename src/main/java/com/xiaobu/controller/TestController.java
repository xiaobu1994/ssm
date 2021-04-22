package com.xiaobu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/2/21 14:29
 * @description V1.0
 */

@RequestMapping("test")
@Controller
public class TestController {

    @RequestMapping("test")
    @ResponseBody
    public String test() {
        int a = 1 / 0;
        return a + "";
    }

}
