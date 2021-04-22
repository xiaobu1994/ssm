package com.xiaobu.javaSocket;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/3/22 14:55
 * @description V1.0
 */
public class TcpServer {
    public static void main(String[] args) throws Exception {
        try (ServerSocket server = new ServerSocket(9091)) {
            try (Socket client = server.accept()) {
                System.out.println("客户端:"+client.getInetAddress().getLocalHost()+"已连接到服务器");
                BufferedReader input = new BufferedReader(new InputStreamReader(client.getInputStream()));
                boolean flag = true;
                int count = 1;

                while (flag) {
                    System.out.println("客户端要开始发骚了，这是第" + count + "次！");
                    count++;

                    String line = input.readLine();
                    if (line.equals("exit")) {
                        flag = false;
                        System.out.println("客户端不想玩了！");
                    } else {
                        System.out.println("客户端说： " + line);
                    }

                }
            }

        }
    }

}
