package com.xiaobu.controller.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/7/24 9:41
 * @description 百度地图
 */
@RequestMapping("map")
@Controller
public class MapController {



    //
    @GetMapping("toMap")
    public String toMap(){
        return "/map/baidumap";
    }



    //关键字搜索
    @GetMapping("toMap1")
    public String toMap1(){
        return "/map/map1";
    }



    //地图上获取地点坐标
    @GetMapping("toMap2")
    public String toMap2(){
        return "/map/map2";
    }


    /**
     *  本地检索的数据接口
     */
    @GetMapping("toMap3")
    public String toMap3(){
        return "/map/map3";
    }


    /**
     *  本地检索的控制面板
     */
    @GetMapping("toMap4")
    public String toMap4(){
        return "/map/map4";
    }


    @GetMapping("toLi")
    public String toLi(){
        return "/map/li";
    }
}
