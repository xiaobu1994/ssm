package com.xiaobu.mapper;

import com.xiaobu.base.mapper.MyMapper;
import com.xiaobu.entity.Customer;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/3/24 21:50
 * @description
 */
@Mapper
public interface CustomerMapper extends MyMapper<Customer> {
}