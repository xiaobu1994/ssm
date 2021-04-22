package com.xiaobu.controller.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/5/17 11:42
 * @description V1.0 简易的追溯方案示例
 */
@RequestMapping("code")
@Controller
public class CodeController {




    /**
     * 新增
     */
    @GetMapping("toAdd")
    public String toOperate(){
        return "/demo/code_add";
    }

    /**
     * 查询
     */
    @GetMapping("toSearch")
    public String toSearch(){
        return "/demo/code_search";
    }

    /**
     *
     * 展示
     */
    @GetMapping("toInfo")
    public String toInfo(){
        return "/demo/code_info";
    }









}
