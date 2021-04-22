package com.xiaobu.javaSocket;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;

/**
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/3/22 14:56
 * @description V1.0
 */
public class TcpClient {
    public static void main(String[] args) throws Exception {
        try (Socket client = new Socket("172.18.9.166", 8899)) {
            PrintWriter output = new PrintWriter(client.getOutputStream(), true);
            Scanner cin = new Scanner(System.in);
            String words;
            while (cin.hasNext()) {
                words = cin.nextLine();
                output.println(words);
                System.out.println("写出了数据: " + words);
            }
            cin.close();
            BufferedReader input = new BufferedReader(new InputStreamReader(client.getInputStream()));
            String line = input.readLine();
            System.out.println("服务端说: " + line);
        }
    }

}
