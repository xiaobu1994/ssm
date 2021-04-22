/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package com.xiaobu.controller;

import com.xiaobu.entity.City;
import com.xiaobu.service.CityService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author xiaobu
 * @version 1.0 12314
 * @date 2018/11/27 19:28
 * @descprition
 */
@RestController
@RequestMapping("/cities")
public class CityController {

    @Autowired
    private CityService cityService;

    @RequestMapping
    public PageInfo<City> getAll(City city) {
        List<City> countryList = cityService.getAll(city);
        return new PageInfo<City>(countryList);
    }

    @RequestMapping(value = "/add")
    public City add() {
        return new City();
    }

    @RequestMapping(value = "/view/{id}")
    public City view(@PathVariable Integer id) {
        ModelAndView result = new ModelAndView();
        City city = cityService.getById(id);
        return city;
    }

    @RequestMapping(value = "/delete/{id}")
    public ModelMap delete(@PathVariable Integer id) {
        ModelMap result = new ModelMap();
        cityService.deleteById(id);
        result.put("msg", "删除成功!");
        return result;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelMap save(City city) {
        ModelMap result = new ModelMap();
        String msg = city.getId() == null ? "新增成功!" : "更新成功!";
        cityService.save(city);
        result.put("city", city);
        result.put("msg", msg);
        return result;
    }


    /**
     * 功能描述:加入缓存 http://localhost:8899/cities/getCityByCache/1
     * @author xiaobu
     * @date 2019/7/29 15:12
     * @param id id
     * @return com.xiaobu.entity.City
     * @version 1.0
     */
    @GetMapping("getCityByCache/{id}")
    public City getCityByCache(@PathVariable Integer id) {
        return cityService.getCityByCache(id);
    }


    /**
     * 功能描述:未加入缓存 http://localhost:8899/cities/getCityByNoCache/1/xiaobu
     * @author xiaobu
     * @date 2019/7/29 15:11
     * @param id, name]
     * @return com.xiaobu.entity.City
     * @version 1.0
     */
    @GetMapping(value = "getCityByNoCache/{id}/{name}")
    public City getCityByNoCache(@PathVariable Integer id,@PathVariable String name) {
        System.out.println("id = " + id+",name="+name);
        return cityService.getCityByNoCache(id);
    }

}
