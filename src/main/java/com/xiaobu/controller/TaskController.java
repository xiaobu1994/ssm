package com.xiaobu.controller;

import com.xiaobu.base.utils.DateTimeUtils;
import org.springframework.stereotype.Controller;

import java.time.LocalDateTime;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/2/28 9:14
 * @description V1.0
 */

@Controller
public class TaskController {




   // @Async
    //@Scheduled(cron = "0 * * * * ? ")
    public void task(){
        LocalDateTime localDateTime = LocalDateTime.now();
        String dateTime=DateTimeUtils.formatLocalDateTime(localDateTime);
        System.out.println("dateTime = " + dateTime);

    }

}
