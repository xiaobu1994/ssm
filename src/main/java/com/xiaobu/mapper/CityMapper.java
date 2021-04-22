package com.xiaobu.mapper;
import com.xiaobu.base.mapper.MyMapper;
import com.xiaobu.entity.City;
import org.apache.ibatis.annotations.Param;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 18:56
 * @description V1.0
 */
public interface CityMapper extends MyMapper<City> {
    City findById(@Param("id")Integer id);






}
