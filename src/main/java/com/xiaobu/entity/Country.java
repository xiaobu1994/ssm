package com.xiaobu.entity;

import com.xiaobu.base.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 19:18
 * @description V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class Country extends BaseEntity {
    /**
     * 名称
     */
    private String countryname;

    /**
     * 代码
     */
    private String countrycode;

}
