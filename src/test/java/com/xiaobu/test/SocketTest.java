package com.xiaobu.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/5/7 17:42
 * @description V1.0
 */
public class SocketTest {

    public static final String IP_ADDR = "172.18.9.166";//服务器地址
    public static final int PORT = 9004;//服务器端口号

    public static void main(String[] args) {
        System.out.println("客户端启动...");
        while (true) {
            Socket socket = null;
            try {
                //创建一个流套接字并将其连接到指定主机上的指定端口号
                socket = new Socket(IP_ADDR, PORT);
                InputStream inputStream = socket.getInputStream();
               byte[] bytes = toByteArray(inputStream);
                String str = new String(bytes, StandardCharsets.UTF_8);
                System.out.println("str = " + str);
            } catch (Exception e) {
                System.out.println("客户端异常:" + e.getMessage());
            } finally {
                if (socket != null) {
                    try {
                        socket.close();
                    } catch (IOException e) {
                        socket = null;
                        System.out.println("客户端 finally 异常:" + e.getMessage());
                    }
                }
            }
        }
    }


    public static byte[] toByteArray(InputStream input) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        int n = 0;
        while (-1 != (n = input.read(buffer))) {
            output.write(buffer, 0, n);
        }
        return output.toByteArray();
    }
}
