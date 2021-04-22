package com.xiaobu.controller;

import com.xiaobu.base.utils.Base64utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.UUID;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/2/21 14:29
 * @description V1.0 图片
 */

@RequestMapping("picture")
@Controller
public class PictureController {

    @RequestMapping("/toPicture")
    public String toPicture() {
        return "/picture";
    }


    @RequestMapping("/toPictureAdvance")
    public String toPictureAdvance() {
        return "/picture_advance";
    }

    @RequestMapping("/toPictureCompress")
    public String toPictureCompress() {
        return "/picture_compress";
    }




    @ResponseBody
    @RequestMapping("/upload")
    public String upload(String base64) {
        //文件保存路径
        String pictureName = UUID.randomUUID().toString() + ".JPG";
        String path = "F:/picture/" + pictureName;
        base64 = base64.replaceAll(" ", "+").replaceAll("\n", "").split(",")[1];
        Base64utils.base64ToImage(base64, path);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/uploadByFile")
    public String uploadByFile (String objectURL){
        return "success";
    }



}
