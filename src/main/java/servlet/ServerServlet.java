package servlet;

import Server.MultiServer;


import javax.servlet.http.HttpServlet;



public class ServerServlet extends HttpServlet {

    public void init() {
        MultiServer multiServer=new MultiServer(this);
        try{
            new Thread(multiServer).start();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
