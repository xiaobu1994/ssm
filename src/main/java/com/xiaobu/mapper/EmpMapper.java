package com.xiaobu.mapper;
import com.xiaobu.base.mapper.MyMapper;
import com.xiaobu.entity.Emp;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author  xiaobu
 * @date   on  2019/8/16 10:35
 * @version JDK1.8.0_171
 * @description 
 */
@Mapper
public interface EmpMapper extends MyMapper<Emp> {
    /**
     * 功能描述:根据name查找
     * @author xiaobu
     * @date 2019/8/16 10:41
     * @param name 名称
     * @return java.util.List<com.xiaobu.entity.Emp>
     * @version 1.0
     */
    List<Emp> findAllByName(@Param("name")String name);

    List<Emp> findAllLikeAndName(@Param("likeName")String likeName);

    Emp findById(@Param("id")String id);

   int modifyById(@Param("updated")Emp updated,@Param("id")String id);


 @Override
 int insertList(@Param("list")List<Emp> list);

 List<Emp> findByNameLike(@Param("likeName")String likeName);








}