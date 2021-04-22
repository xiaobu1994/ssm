package com.xiaobu.cxf;

import org.apache.cxf.endpoint.Client;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;

import java.util.Arrays;
import java.util.List;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2018/11/23 10:45
 * @description V1.0 webservice客户端调用
 */
public class TestDemo {
    private static final String WSDL_URL = "http://localhost:8899/services/demoService?wsdl";
    private static JaxWsDynamicClientFactory dcf = JaxWsDynamicClientFactory.newInstance();
    private static Client client = dcf.createClient(WSDL_URL);

    public static void main(String[] args) {
        //method1();

        method2();
    }

    /**
     * @author xiaobu
     * @date 2018/11/23 14:29
     * @return void
     * @descprition  //动态调用
     * @version 1.0
     */
    @SuppressWarnings("all")
    private static void method1() {
        // 需要密码的情况需要加上用户名和密码
        Object[] objects = new Object[0];
        try {
            // invoke("方法名",参数1,参数2,参数3....);
            objects = client.invoke("demo", "xiaobu");
            List list = Arrays.asList(objects);
            System.out.println("list = " + list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    private static void method2() {
        // 需要密码的情况需要加上用户名和密码
        Object[] objects = new Object[0];
        try {
            // invoke("方法名",参数1,参数2,参数3....);
            objects = client.invoke("demo2", 2);
            List list = Arrays.asList(objects);
            System.out.println("list = " + list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
