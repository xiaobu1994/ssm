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

import com.xiaobu.entity.Country;
import com.xiaobu.service.CountryService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * @author xiaobu
 * @date 2018/11/27 19:28
 * @descprition
 * @version 1.0
 */
@Controller
@RequestMapping("/countries")
public class CountryController {

    @Autowired
    private CountryService countryService;

    @RequestMapping
    public ModelAndView getAll(Country country) {
        ModelAndView result = new ModelAndView("index");
        List<Country> countryList = countryService.getAllByWeekend(country);
        result.addObject("pageInfo", new PageInfo<Country>(countryList));
        result.addObject("queryParam", country);
        result.addObject("page", country.getPage());
        result.addObject("rows", country.getRows());
        return result;
    }

    @RequestMapping("/get")
    public String get(Country country, Model model){
        List<Country> countryList = countryService.getAllByWeekend(country);
        model.addAttribute("pageInfo", new PageInfo<Country>(countryList));
        model.addAttribute("queryParam", country);
        model.addAttribute("page", country.getPage());
        model.addAttribute("rows", country.getRows());
        return "/index";
    }

    @RequestMapping(value = "/add")
    public ModelAndView add() {
        ModelAndView result = new ModelAndView("view");
        result.addObject("country", new Country());
        return result;
    }

    @RequestMapping(value = "/view/{id}")
    public ModelAndView view(@PathVariable Integer id) {
        ModelAndView result = new ModelAndView("view");
        Country country = countryService.getById(id);
        result.addObject("country", country);
        return result;
    }

    @RequestMapping(value = "/delete/{id}")
    public ModelAndView delete(@PathVariable Integer id, RedirectAttributes ra) {
        ModelAndView result = new ModelAndView("redirect:/countries");
        countryService.deleteById(id);
        ra.addFlashAttribute("msg", "????????????!");
        return result;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(Country country) {
        ModelAndView result = new ModelAndView("view");
        String msg = country.getId() == null ? "????????????!" : "????????????!";
        countryService.save(country);
        result.addObject("country", country);
        result.addObject("msg", msg);
        return result;
    }
}
