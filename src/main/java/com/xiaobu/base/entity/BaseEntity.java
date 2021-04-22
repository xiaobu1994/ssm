package com.xiaobu.base.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 17:36
 * @description V1.0
 */
@Data
public class BaseEntity {
    @Id
    @Column(name = "Id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Transient
    private Integer page = 1;
    @Transient
    private Integer rows = 10;
}
