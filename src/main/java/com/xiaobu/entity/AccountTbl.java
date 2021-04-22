package com.xiaobu.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/3/24 22:04
 * @description
 */
@Data
public class AccountTbl implements Serializable {
    private Integer id;

    private String userId;

    private Integer money;

    private static final long serialVersionUID = 1L;
}