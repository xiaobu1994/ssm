package com.xiaobu.mapper;

import com.xiaobu.base.mapper.MyMapper;
import com.xiaobu.entity.Person;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author  xiaobu
 * @date   on  2021/4/12 22:10
 * @version JDK1.8.0_171
 * @description 
 */
@Mapper
public interface PersonMapper extends MyMapper<Person> {
}