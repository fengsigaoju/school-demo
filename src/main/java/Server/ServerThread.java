package Server;

import bean.ResultBean;
import bean.ResultEnum;
import servlet.ServerServlet;

import javax.servlet.ServletContext;
import java.io.*;
import java.net.Socket;

public class ServerThread extends Thread{
    Socket socket=null;
    InputStream is=null;
    BufferedReader br=null;
    OutputStream os=null;
    PrintWriter pw=null;
    ServerServlet serverServlet=null;
    public ServerThread(Socket socket, ServerServlet serverServlet){
        this.socket=socket;
        this.serverServlet=serverServlet;
    }
    public void run(){
        try {
            is=socket.getInputStream();
            br=new BufferedReader(new InputStreamReader(is));
            String info=null;
            while((info=br.readLine())!=null){
                System.out.println("get infomarion : "+info);
            }
            ResultBean resultBean=convertSocketToBean(info);
            socket.shutdownInput();
            ServletContext servletContext=serverServlet.getServletContext();
            servletContext.setAttribute(ResultEnum.TEMPERATURE.getValue(),resultBean.getTemperature());
            servletContext.setAttribute(ResultEnum.CARBON_DIOXIDE.getValue(),resultBean.getCarbonDioxide());
            servletContext.setAttribute(ResultEnum.ILLUMINATION.getValue(),resultBean.getIllumination());
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            if (pw!=null)
                pw.close();
            try {
                if (os!=null)
                    os.close();
                if (br!=null)
                    br.close();
                if (is!=null)
                    is.close();
                socket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * 将获取到的socket转换成bean对象
     * @param info
     * @return
     */
    private ResultBean convertSocketToBean(String info) {
        ResultBean resultBean=new ResultBean();
        String[] answer=info.split(",");
        if (answer!=null&&answer.length>3){
            resultBean.setTemperature(answer[0].split(":")[1]);
            resultBean.setCarbonDioxide(answer[1].split(":")[1]);
            resultBean.setIllumination(answer[2].split(":")[1]);
        }
        return  resultBean;
    }
}