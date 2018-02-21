<%--
  Created by IntelliJ IDEA.
  User: lanzhang
  Date: 2018/1/15
  Time: 上午10:15
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
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.tempgauge.js"></script>
</head>

<body>
<div class="navigation">
    <a id="home" href="index.jsp">
        <img src="images/z_jietu.png" alt="img">
        <em class="under-icon-text">主页</em>
    </a>

    <a id="wendu" class="selected" href="temperature.jsp">
        <img src="images/z_jietu01.png" alt="img">
        <em class="under-icon-text">温度</em>
    </a>

    <a id="guangzhao" href="illumination.jsp">
        <img src="images/z_jietu02.png" alt="img">
        <em class="under-icon-text">光照</em>
    </a>

    <a id="kongqi" href="carbonDioxide.jsp">
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

<div class="wendu">
    <span>当前温度:5</span>
    <div id="wenduji">
        <div class="tempGauge0">5</div>
    </div>
    <div class="decoration"></div>
</div>
</body>
<script type="text/javascript">
    $(function(){
        $(".tempGauge0").tempGauge({width:100, borderWidth:3, showLabel:true, borderColor:"black"});
    });
</script>
</html>