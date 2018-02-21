<%--
  Created by IntelliJ IDEA.
  User: lanzhang
  Date: 2018/1/15
  Time: 上午10:41
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
    <script type="text/javascript" src="scripts/contact.js"></script>
</head>

<body>
<div class="navigation">
    <a id="home" href="index.php">
        <img src="images/z_jietu.png" alt="img">
        <em class="under-icon-text">主页</em>
    </a>

    <a id="wendu" href="wendu.php">
        <img src="images/z_jietu01.png" alt="img">
        <em class="under-icon-text">温度</em>
    </a>

    <a id="guangzhao" href="guangzhao.php">
        <img src="images/z_jietu02.png" alt="img">
        <em class="under-icon-text">光照</em>
    </a>

    <a id="kongqi" href="kongqi.php">
        <img src="images/z_jietu03.png" alt="img">
        <em class="under-icon-text">pm2.5</em>
    </a>

    <a id="contact" class="selected" href="contact.php">
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

<div class="contact">
    <div class="full-width">
        <h4 class="shadow">联系我们</h4>
        <p class="shadow">
            感谢您的到来，请您为我们留言或使用以下方式联系我们，我们将尽快给你回复，谢谢。<br><br>

            地址：南京市栖霞区文苑路9号<br>
            咨询电话：13188888888<br>
            邮箱：6666666@163.com<br>
        </p>
    </div>

    <form id="contactForm" action="#" method="post" onsubmit="return checkForm()">
        <div class="decoration"></div>

        <label for="contactName" id="name_label">姓名 (Name)</label>
        <input type="text" name="contactName" id="contactName" size="30" value="" class="text-input" />
        <span class="error" id="nameError">请填写你的姓名 !</span>
        <label for="contactEmail" id="email_label">邮箱 (E-mail)</label>
        <input type="text" name="contactEmail" id="contactEmail" size="30" value="" class="text-input" />
        <span class="error" id="emailError">请填写你的邮箱!</span>
        <span class="error" id="emailError2">邮箱格式错误!</span>
        <label for="contactMessage" id="message_label">留言(Message)</label>
        <textarea  name="contactMessage" id="contactMessage" class="text-input"></textarea>
        <span class="error" id="messageError">请填写你的留言 !</span>
        <p>
            <input type="submit" name="submitMessage" class="contactButton button grey" id="contactSubmitBtn" value="提交(Send)"/>
        </p>

    </form>
    <div class="decoration"></div>
</div>

</body>
</html>