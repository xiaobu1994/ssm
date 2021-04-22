package com.xiaobu.socketClient;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/3/28 16:57
 * @description V1.0 这个是ok的
 */
public class SocketClient {
    private static final String IP = "127.0.0.1";
    private static final int NetPort = 9004;
    private static Socket socket;


    public static void main(String[] args) throws InterruptedException, IOException {
        while (true){
            InetSocketAddress addr = new InetSocketAddress(IP, NetPort); //创建socket
            if (socket == null) {
                socket = new Socket();
                socket.connect(addr);//连接服务器
                System.out.println("服务器连接成功......");
            }
            byte[] receive = new byte[1024];
            socket.getInputStream().read(receive);
            String tempString = NetDataTypeTransform.ByteArraytoString(receive, receive.length);
            System.out.println("  Server sended:" + tempString);
            if (tempString.equals("Password")) {
                System.out.println("I can send password 123!");
            }
            String password = "123";
            socket.getOutputStream().write(NetDataTypeTransform.StringToByteArray(password));
           byte[] isOk = new byte[4];
            socket.getInputStream().read(isOk);
            String okString = NetDataTypeTransform.ByteArraytoString(isOk, isOk.length);
            System.out.println("  ----- is ok?--" + okString);
            socket = null;
        }

    }
}
