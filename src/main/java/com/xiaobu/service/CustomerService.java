package com.xiaobu.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.xiaobu.mapper.CustomerMapper;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/3/24 21:44
 * @description
 */
@Service
public class CustomerService {

    @Resource
    private CustomerMapper customerMapper;

}







