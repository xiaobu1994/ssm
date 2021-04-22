package com.xiaobu.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/3/24 21:50
 * @description
 */
@Data
public class Customer implements Serializable {
    private Integer cid;

    private String cname;

    private Date registerTime;

    private String recommender;

    private static final long serialVersionUID = 1L;
}