package homework2;

import java.io.*;
import java.lang.reflect.InvocationTargetException;

public class HelloClassLoader extends ClassLoader{
    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        byte[] classData = decodeClass();
        if (classData == null) {
            return null;
        }

        return defineClass(name, classData, 0, classData.length);
    }

    private byte[] decodeClass() {
        byte[] encode_buf = readClassFile("E:\\JavaCourse\\code_space\\JAVA-000\\Week_01\\homework2\\Hello.xlass");
        if (encode_buf == null) {
            return null;
        }

        byte[] decode_buf = new byte[encode_buf.length];
        for (int i = 0; i < decode_buf.length; i++) {
            // 恢复Hell.xlass文件原始的字节流数据
            decode_buf[i] = (byte) (255 - encode_buf[i]);
        }

        return decode_buf;
    }

    private byte[] readClassFile(String path) {
        InputStream is = null;
        try {
            File file = new File(path);
            byte[] read_buf = new byte[(int) file.length()];
            is = new FileInputStream(path);
            int val = 0, idx = 0;

            while (true) {
                try {
                    val = is.read();
                    if (val == -1) {
                        break;
                    }

                    read_buf[idx++] = (byte)val;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

            return read_buf;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void main(String[] args) {
        System.out.println("Hello Class Loader");

        try {
            Object helloObj = new HelloClassLoader().findClass("Hello").newInstance();
            helloObj.getClass().getDeclaredMethod("hello").invoke(helloObj);
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}
