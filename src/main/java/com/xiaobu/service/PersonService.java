package com.xiaobu.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.xiaobu.mapper.PersonMapper;
/**
 * @author  xiaobu
 * @date   on  2021/4/12 22:10
 * @version JDK1.8.0_171
 * @description 
 */
@Service
public class PersonService{

    @Resource
    private PersonMapper personMapper;

}
