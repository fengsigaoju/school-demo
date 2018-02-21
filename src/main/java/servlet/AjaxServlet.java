package servlet;

import bean.ResultBean;
import bean.ResultEnum;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("enter in doGet");
        ServletContext servletContext = request.getServletContext();
        ResultBean resultBean = convertApplicationToResultBean(servletContext);
        PrintWriter pw = response.getWriter();
        pw.write(JSONObject.toJSONString(resultBean));
        pw.close();
    }

    /**
     * 把application对象存储的内容转化为bean 对象字段
     * include
     * 温度
     * 二氧化碳
     * 光照
     *
     * @param servletContext
     * @return
     */
    private ResultBean convertApplicationToResultBean(ServletContext servletContext) {
        ResultBean resultBean = new ResultBean();
        //resultBean.setTemperature((String) servletContext.getAttribute(ResultEnum.TEMPERATURE.getValue()));
        //resultBean.setCarbonDioxide((String) servletContext.getAttribute(ResultEnum.CARBON_DIOXIDE.getValue()));
        //resultBean.setIllumination((String) servletContext.getAttribute(ResultEnum.ILLUMINATION.getValue()));
        resultBean.setTemperature(String.valueOf(25));
        return resultBean;
    }
}
