package com.xiaobu.controller.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/7/24 9:35
 * @description layer弹出层
 */
@Controller
@RequestMapping("layer")
public class LayerController {

    @RequestMapping("toIndex")
    public String toIndex(){
        return "/layer/index";
    }

}
