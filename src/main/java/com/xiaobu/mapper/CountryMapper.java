package com.xiaobu.mapper;

import com.xiaobu.base.mapper.MyMapper;
import com.xiaobu.entity.Country;

import java.util.List;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/27 19:21
 * @description V1.0
 */
public interface CountryMapper extends MyMapper<Country> {
    /**
     * 功能描述:通过#{}来进行查询
     *
     * @param ids id
     * @return java.util.List<com.xiaobu.entity.Country>
     * @author xiaobu
     * @date 2019/7/26 11:53
     * @version 1.0
     */
    List<Country> findList(String ids);

    /**
     * 功能描述:通过${}来进行查询
     *
     * @param ids id
     * @return java.util.List<com.xiaobu.entity.Country>
     * @author xiaobu
     * @date 2019/7/26 11:53
     * @version 1.0
     */
    List<Country> findList2(String ids);

    /**
     * 功能描述: 通过foreach来进行查询
     *
     * @param ids id
     * @return java.util.List<com.xiaobu.entity.Country>
     * @author xiaobu
     * @date 2019/7/26 11:53
     * @version 1.0
     */
    List<Country> findListByForEach(List<Integer> ids);
}
