package com.xiaobu.demo;

import lombok.Data;

import java.util.List;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/4/16 21:40
 * @description
 */

@Data
public class Person {

    private int age;

    private String name;

    private List<Role> roleList;

}
