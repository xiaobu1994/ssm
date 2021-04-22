package com.xiaobu.controller.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/5/17 11:42
 * @description V1.0 敬业点检demo
 */
@RequestMapping("index")
@Controller
public class IndexController {


    @GetMapping("toIndex")
    public String toIndex(){
        return "/demo/index";
    }


    /**
     * 下载作业
     */
    @GetMapping("toOperate")
    public String toOperate(){
        return "/demo/operate";
    }




    @GetMapping("toShow")
    public String toShow(){
        return "/demo/show";
    }



    @GetMapping("toPicture")
    public String toPicture(){
        return "/demo/picture";
    }




    @GetMapping("toCalendar")
    public String toCalendar(){
        return "/demo/calendar";
    }
}
