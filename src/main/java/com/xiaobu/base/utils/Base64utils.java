package com.xiaobu.base.utils;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

/**
 * Util Base64的应用 JDK8以上所有
 *
 * @author xiaobu
 * @version JDK1.8.0_171
 * @date on  2019/4/19 13:44
 * @description V1.0
 */
public class Base64utils {
    /**
     * 功能描述:将图片文件转化为字节数组字符串，并对其进行Base64编码处理
     *
     * @param path 图片路径
     * @return java.lang.String base64字符串
     * @author xiaobu
     * @date 2019/4/19 13:53
     * @version 1.0
     */
    public static String imageToBase64(String path) {
        // 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
        byte[] data = null;
        // 读取图片字节数组
        try {
            InputStream in = new FileInputStream(path);
            data = new byte[in.available()];
            in.read(data);
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 对字节数组Base64编码 JDK8以上
        Base64.Encoder encoder = Base64.getEncoder();
        // 返回Base64编码过的字节数组字符串
        return encoder.encodeToString(data);
    }

    /**
     * 功能描述:对字节数组字符串进行Base64解码并生成图片
     *
     * @param base64 base64字符串, path 图片路径
     * @return boolean
     * @author xiaobu
     * @date 2019/4/19 13:52
     * @version 1.0
     */
    public static boolean base64ToImage(String base64, String path) {
        // 对字节数组字符串进行Base64解码并生成图片
        if (base64 == null) {
            // 图像数据为空
            return false;
        }
        Base64.Decoder decoder = Base64.getDecoder();
        try {
            // Base64解码
            byte[] bytes = decoder.decode(base64);
            for (int i = 0; i < bytes.length; ++i) {
                if (bytes[i] < 0) {
                    // 调整异常数据
                    bytes[i] += 256;
                }
            }
            // 生成jpeg图片
            OutputStream out = new FileOutputStream(path);
            out.write(bytes);
            out.flush();
            out.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }


    /**
     * @param text 编码字符串
     * @return java.lang.String
     * @author xiaobu
     * @date 2018/11/2 15:43
     * @descprition 编码
     * @version 1.0
     */
    public static String encode(String text) {
        Base64.Encoder encoder = Base64.getEncoder();
        byte[] bytes = null;
        bytes = encoder.encode(text.getBytes(StandardCharsets.UTF_8));
        return new String(bytes, StandardCharsets.UTF_8);
    }

    /***
     * @author xiaobu
     * @date 2018/11/2 15:50
     * @param text 要解码的字符串
     * @return java.lang.String
     * @descprition
     * @version 1.0
     */
    public static String decode(String text) {
        Base64.Decoder decoder = Base64.getDecoder();
        byte[] bytes = null;
        bytes = decoder.decode(text.getBytes(StandardCharsets.UTF_8));
        return new String(bytes, StandardCharsets.UTF_8);
    }

    public static void main(String[] args) {
        String encodeStr = imageToBase64("F:\\picture/1.JPG");
        System.out.println("Base64:" + encodeStr);
        System.out.println(base64ToImage(encodeStr, "F:\\picture/9.JPG"));
    }


}
