package Server;

import servlet.ServerServlet;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class MultiServer implements Runnable {

    ServerSocket serverSocket = null;
    Socket socket=null;
    ServerServlet serverServlet=null;
    public MultiServer(ServerServlet serverServlet){
        this.serverServlet=serverServlet;
    }
    public void run() {
        try {
            serverSocket = new ServerSocket(8888);
            ExecutorService executorService = Executors.newFixedThreadPool(5);
            while (true) {
                executorService.execute(new Runnable() {
                    public void run() {
                        try {
                            socket = serverSocket.accept();
                            ServerThread serverThread=new ServerThread(socket,serverServlet);
                            serverThread.start();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
