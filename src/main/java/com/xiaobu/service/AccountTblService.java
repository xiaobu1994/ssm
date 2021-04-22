package com.xiaobu.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.xiaobu.mapper.AccountTblMapper;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/3/24 21:51
 * @description
 */
@Service
public class AccountTblService {

    @Resource
    private AccountTblMapper accountTblMapper;

}


