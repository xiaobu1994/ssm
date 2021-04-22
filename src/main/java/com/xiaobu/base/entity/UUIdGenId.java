package com.xiaobu.base.entity;

import tk.mybatis.mapper.genid.GenId;

import java.util.UUID;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/8/16 15:29
 * @description
 */
public class UUIdGenId implements GenId<String> {
    @Override
    public String genId(String s, String s1) {
        return UUID.randomUUID().toString().replace("-","");
    }
}
