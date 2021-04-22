package com.xiaobu;

import com.xiaobu.entity.Emp;
import com.xiaobu.mapper.CountryMapper;
import com.xiaobu.mapper.EmpMapper;
import com.xiaobu.service.EmpService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDateTime;
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
public class EmpTest {

    @Autowired
    private CountryMapper countryMapper;
    @Autowired
    private EmpService empService;

    @Autowired
    private EmpMapper empMapper;

    @Test
    public void findAllByName(){
        List<Emp> emps = empService.findAllByName("admin2018-12-25");
        System.out.println("emps = " + emps);
    }


    @Test
    public void findAllLikeAndName(){
        List<Emp> emps = empService.findAllLikeAndName("admin");
        System.out.println("emps = " + emps);;
    }



    @Test
    public void findById(){
        Emp emps = empService.findById("0caae89be6ed49d9bbccf6bf467259f6");
        System.out.println("emps = " + emps);;
    }


    @Test
    public void modifyById(){
        Emp emp = new Emp();
        emp.setId("0caae89be6ed49d9bbccf6bf467259f6");
        emp.setCreateTime(LocalDateTime.now());
        emp.setName("小布");
        emp.setPassword("xiaobu@1994");
        int count = empService.modifyById(emp, "1");
        System.out.println("count = " + count);
    }


    @Test
    public  void insertList(){
        List<Emp> emps = new ArrayList<>();
        Emp emp = new Emp();
        emp.setPassword("123456");
        emp.setName("xiaobu");
        emp.setCreateTime(LocalDateTime.now());
        emps.add(emp);
        int count = empMapper.insertList(emps);
        System.out.println("count = " + count);
    }


    @Test
    public  void insert(){
        Emp emp = new Emp();
        emp.setPassword("123456");
        emp.setName("xiaobu");
        emp.setCreateTime(LocalDateTime.now());
        empMapper.insert(emp);
        System.out.println("emp = " + emp);
    }





}
