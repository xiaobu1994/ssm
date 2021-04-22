package com.xiaobu.demo;

import com.xiaobu.base.utils.EntityUtils;
import lombok.SneakyThrows;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2021/4/16 21:40
 * @description
 */
public class MapToBeanTest {

    @SneakyThrows
    public static void main(String[] args) {
        Map<String,Object> map = new HashMap();
        List<Role> roleList=new ArrayList<>();
        Role role = new Role();
        role.setId(1);
        role.setRoleName("admin");
        Role role2 = new Role();
        role2.setId(2);
        role2.setRoleName("dev");
        roleList.add(role2);
        roleList.add(role);
        map.put("age", 19);
        map.put("name", "xiaobu");
        map.put("roleList", roleList);
       Person person= EntityUtils.mapToObject(map, Person.class);
        System.out.println("person = " + person);
    }

}
