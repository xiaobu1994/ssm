package com.xiaobu;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xiaobu.entity.City;
import com.xiaobu.entity.Country;
import com.xiaobu.mapper.CountryMapper;
import com.xiaobu.service.CountryService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 20:20
 * @description V1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CountryTest {

    @Autowired
    private CountryMapper countryMapper;
    @Autowired
    CountryService countryService;

    @Test
    public  void findByPage(){
        PageHelper.startPage(0, 10).setOrderBy(" id ");
        Country country = new Country();
        PageInfo<Country> pageInfo = new PageInfo<>(countryService.getAll(country));
        System.out.println("pageInfo = " + pageInfo);
    }


    @Test
    public void test() {
        Country country = new Country();
        List<Country> all = countryService.getAll(country);
        for (Country c : all) {
            System.out.println(c.getCountryname());
        }
    }





    @Test
    public void  countTotal(){
        //统计总数 SELECT COUNT(Id) FROM country
        Example example = new Example(City.class);
        int count =countryMapper.selectCountByExample(example);
        System.out.println("count = " + count);

        //按条件查询  SELECT COUNT(Id) FROM country
        Country country = new Country();
        //country.setCountryname("1234");
        int conunt2 = countryMapper.selectCount(country);
        System.out.println("conunt2 = " + conunt2);
    }





    @Test
    public void  findList(){
        //Preparing: select * from country where id in ( '1,2,3')
        List<Country> countries = countryMapper.findList("1,2,3");
        //countries = [Country(countryname=Angola, countrycode=AO)]
        System.out.println("countries = " + countries);
        //报错   There is no getter for property named 'ids' in 'class java.lang.String
        List<Country> countries2 = countryMapper.findList2("1,2,3");
        System.out.println("countries2 = " + countries2);
    }



    @Test
    public void  findListByForeach(){
        //Preparing: select * from country where id in ( ? , ? , ? )
        //Parameters: 1(Integer), 2(Integer), 3(Integer)
        List<Integer> list = new ArrayList<>(3);
        list.add(1);
        list.add(2);
        list.add(3);
        List<Country> countries2 = countryMapper.findListByForEach(list);
        System.out.println("countries2 = " + countries2);
    }
}
