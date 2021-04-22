package com.xiaobu.test;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xiaobu.entity.Country;
import com.xiaobu.mapper.CountryMapper;
import com.xiaobu.service.CountryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CountryServiceTest {

    @Autowired
    private CountryMapper countryMapper;

    @Autowired
    private CountryService countryService;

    @Test
    public void test() {
        Country country = new Country();
        List<Country> all = countryService.getAll(country);
        for (Country c : all) {
            System.out.println(c.getCountryname());
        }
    }



    @Test
    public void findByPage() {
        PageHelper.startPage(1, 10, " id desc");
        PageInfo<Country> pageInfo = new PageInfo<>(this.countryMapper.selectAll());
        //pageInfo.getList().size():10
        //sql==>>SELECT Id, countryname, countrycode FROM country order by id desc LIMIT ?
        System.out.println("pageInfo.getList().size():"+pageInfo.getList().size());
        System.out.println("pageInfo = " + pageInfo);
    }


    @Test
    public void findByPage2() {
        List<Country> countries = this.countryMapper.selectAll();
        PageHelper.startPage(1, 10, " id desc");
        PageInfo<Country> pageInfo = new PageInfo<>(countries);
        //pageInfo.getList().size():183
        //sql==>> SELECT Id,countryname,countrycode FROM country
        System.out.println("pageInfo.getList().size():"+pageInfo.getList().size());
        System.out.println("pageInfo = " + pageInfo);
    }



    @Test
    public void add(){
        Country country = new Country();
        country.setCountrycode("xiaobu");
        country.setCountryname("xiaobu");
        countryMapper.insert(country);
        System.out.println("country = " + country);
    }
}
