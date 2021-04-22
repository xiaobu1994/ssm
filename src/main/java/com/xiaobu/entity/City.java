package com.xiaobu.entity;

import com.xiaobu.base.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 17:58
 * @description V1.0
 */
@EqualsAndHashCode(callSuper = true)
@Entity
@Table(name="city")
@Data
public class City extends BaseEntity implements Serializable {
    private static final long serialVersionUID = -4551953276601557391L;
    private String name;
    private String state;
}
