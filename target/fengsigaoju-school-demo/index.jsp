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
    <link href="css/flexslider.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.flexslider-min.js"/>
    <script type="text/javascript" src="scripts/custom.js"></script>
    <script type="text/javascript" src="js/ajaxRequest.js"></script>
</head>

<body>
<div class="navigation">
    <a id="home" class="selected" href="index.jsp">
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

<div class="home">
    <div class="flexslider">
        <ul class="slides">
            <li>
                <img src="images/slider/timg.jpg" />
            </li>
            <li>
                <img src="images/slider/timg (3).jpg" />
            </li>
            <li>
                <img src="images/slider/timg (2).jpg" />
            </li>
            <li>
                <img src="images/slider/timg (1).jpg" />
            </li>
        </ul>
    </div>
    <p class="under-slider-heading shadow">智能家居系统</p>
    <p class="under-slider-description shadow">
        智能家居系统是利用先进的计算机技术、网络通讯技术、智能云端控制，融合个性需求，将与家居生活有关的各个子系统如安防、灯光控制、温度显示、空气污染指数、光照信息等有机地结合在一起，通过网络化综合智能控制和管理，实现“以人为本”的全新家居生活体验！
    </p>

    <div class="decoration"></div>
    <p class="under-slider-heading shadow">支持的设备</p>
    <div class="column">
        <img class="round-icon" src="images/icon/ios.png" alt="img">
        <img class="round-icon" src="images/icon/wp8.png" alt="img">
        <img class="round-icon" src="images/icon/android.png" alt="img">
        <div class="clear"></div>
    </div>
    <div class="decoration"></div>
</div>
</div>
</body>
</html>