package com.xiaobu.controller;

import com.xiaobu.entity.Country;
import com.xiaobu.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/2/21 14:29
 * @description V1.0
 */

@RequestMapping("demo")
@RestController
public class DemoController {


    @Autowired
    CountryService countryService;

    @GetMapping("get")
    public String get() {
        return "get方式";
    }


    @PostMapping("post")
    public String post() {
        return "post方式";
    }


    @GetMapping("getJson")
    public List<Country> getJson(Country country) {
        return countryService.getAllByWeekend(country);
    }


    @PostMapping("postByMap")
    public String postByMap(HttpServletRequest request) throws IOException {
        String loginName = request.getParameter("loginName");
        System.out.println("loginName = " + loginName);
        try {
            BufferedReader br = request.getReader();
            String str;
            StringBuilder wholeStr = new StringBuilder();
            while ((str = br.readLine()) != null) {
                wholeStr.append(str);
            }
            System.out.println("wholeStr = " + wholeStr);
        } catch (IOException e) {
            e.printStackTrace();
        }

        StringBuffer url = request.getRequestURL();
        if (request.getQueryString() != null) {
            url.append("?");
            url.append(request.getQueryString());
        }
        System.out.println("url = " + url);
        return null;
        // return "loginName=" + loginName + "loginPassword=" + loginPassword;
    }


    @PostMapping("demoPost")
    public String post(HttpServletRequest request) {
        String line=null;
        StringBuilder stringBuffer = new StringBuilder();
        try {
            InputStream inputStream = request.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            while ((line=bufferedReader.readLine())!=null){
                stringBuffer.append(line);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }
}
