package course;

import sun.misc.Launcher;

import java.net.URL;

public class JvmClassLoadPrintPath {
    public static void main(String[] args) {
        //
        URL[] urLs = Launcher.getBootstrapClassPath().getURLs();
        System.out.println("启动类加载器");
        for (URL urL : urLs) {
            System.out.println(" >>"+urL.toExternalForm());
        }
    }
}
