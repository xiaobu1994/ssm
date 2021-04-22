package com.xiaobu.entity;

import com.xiaobu.base.entity.UUIdGenId;
import lombok.Data;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Id;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @author  xiaobu
 * @date   on  2019/8/16 10:35
 * @version JDK1.8.0_171
 * @description 
 */
@Data
public class Emp implements Serializable {
    /**
    * 主键id
    */
    @Id
    @KeySql(genId = UUIdGenId.class)
    private String id;

    /**
    * 名字
    */
    private String name;


    /**
    * 密码
    */
    private String password;

    /**
    * 创建时间
    */
    private LocalDateTime createTime;

    private static final long serialVersionUID = 1L;


}