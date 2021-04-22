package com.xiaobu.controller.weui;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/7/18 16:48
 * @description weui demo
 */
@Controller
@RequestMapping("weuix")
public class WeuixController {

    @GetMapping("popup")
    public String popup(){
        return "/weuix/popup";
    }


    @GetMapping("form")
    public String form(){
        return "/weuix/form";
    }
}
