package com.xiaobu.controller.show;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/4/19 16:25
 * @description V1.0
 */
@RequestMapping("show")
@Controller
public class ShowController {


    @RequestMapping("/toFactory")
    public String toPicture() {
        return "/show/factory";
    }


    @RequestMapping("/register")
    public String register() {
        return "/show/register";
    }


    @RequestMapping("/reportFailure")
    public String reportFailure() {
        return "/show/failure";
    }



    @RequestMapping("/repair")
    public String repair() {
        return "/show/repair";
    }


    @RequestMapping("/search")
    public String search() {
        return "/show/search";
    }


    @RequestMapping("/repairList")
    public String repairList() {
        return "/show/repair_list";
    }
}
