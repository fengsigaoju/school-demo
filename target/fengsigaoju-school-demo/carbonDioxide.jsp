<%--
  Created by IntelliJ IDEA.
  User: lanzhang
  Date: 2018/1/15
  Time: 上午10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>手机网站</title>
    <meta name="keywords" content="HTML, CSS, XML" />
    <meta name="description" content="采集温度、光照、PM2.5、CO2等信息" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="author" content="zqy" />

    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/type.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="navigation">
    <a id="home"  href="index.php">
        <img src="images/z_jietu.png" alt="img">
        <em class="under-icon-text">主页</em>
    </a>

    <a id="wendu" href="temperature.jsp">
        <img src="images/z_jietu01.png" alt="img">
        <em class="under-icon-text">温度</em>
    </a>

    <a id="guangzhao" href="illumination.jsp">
        <img src="images/z_jietu02.png" alt="img">
        <em class="under-icon-text">光照</em>
    </a>

    <a id="kongqi" class="selected" href="carbonDioxide.jsp">
        <img src="images/z_jietu03.png" alt="img">
        <em class="under-icon-text">pm2.5</em>
    </a>

    <a id="contact" href="contact.jsp">
        <img src="images/z_jietu04.png" alt="img">
        <em class="under-icon-text">联系我们</em>
    </a>
</div>

<div class="header-deco"></div>

<div class="header">
    <img id="logo" src="images/logo.png" alt="img">
    <div class="social-icons">
        <a href="#"><img src="images/social-icons/QQ.png" alt="img"></a>
        <a href="#"><img src="images/social-icons/weixin.png" alt="img"></a>
        <a href="#"><img src="images/social-icons/weibo.png" alt="img"></a>
        <a href="#"><img src="images/social-icons/douban.png" alt="img"></a>
    </div>
</div>

<div class="decoration"></div>

<div class = "kongqi">
    <%
        int wuran=5;
    %>
    <span>当前PM2.5浓度：5 &micro;g/m^3</span>
    <div class="decoration"></div>

    <% if(wuran<5){   %>
    <img src = "images/background/youxiu.jpg">
    <% }else if(wuran< 100){ %>
    <img src = "images/background/lianghao.jpg">
    <%
    }else if(wuran < 150){ %>
    <img src = "images/background/qingduwuran.jpg">
    <% }else if(wuran < 200){ %>
    <img src = "images/background/zhongduwuran.jpg">
    <% }else if(wuran< 300){ %>
    <img src = "images/background/zhongduwuran (2).jpg">
    <% } else { %>
    <img src = "images/background/yanzhongwuran.jpg">
    <p>
        <%
            if (wuran<50){
                out.println("空气质量:优秀");
            }else{
                if (wuran<100){
                    out.println("空气质量:良好");
                }else if (wuran<150){
                    out.println("空气质量:轻度污染");
                }else if (wuran<200){
                    out.println("空气质量:中度污染");
                }else if (wuran<300){
                    out.println("空气质量:重度污染");
                }out.println("空气质量:严重污染");
            }
        %>
    </p>
</div>

</body>
</html>
