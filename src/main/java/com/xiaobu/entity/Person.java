package com.xiaobu.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * @author  xiaobu
 * @date   on  2021/4/12 22:10
 * @version JDK1.8.0_171
 * @description 
 */
@Data
public class Person implements Serializable {
    private Integer id;

    /**
    * 名字
    */
    private String name;

    private static final long serialVersionUID = 1L;
}