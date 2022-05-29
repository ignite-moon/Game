<%--
  Created by IntelliJ IDEA.
  User: 86155
  Date: 2022/5/17
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <title>原神</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Assets/css/reset.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Assets/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Assets/js/js_z.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Assets/js/banner.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Assets/css/thems.css">
    <script language="javascript">
        $(function(){
            $('#owl-demo').owlCarousel({
                items: 1,
                navigation: true,
                navigationText: ["上一个","下一个"],
                autoPlay: true,
                stopOnHover: true
            }).hover(function(){
                $('.owl-buttons').show();
            }, function(){
                $('.owl-buttons').hide();
            });
        });
    </script>
</head>

<body>
<!--头部-->
<div class="header">
    <div class="head clearfix">
        <div class="logo"><a href=""><img src="${pageContext.request.contextPath}/Assets/images/雷神.jpg" alt="原神"/></a></div>
        <ul class="nav clearfix">
            <li class="now"><a href="${pageContext.request.contextPath}/user/first">首页</a></li>
            <li><a href="about.html">关于</a></li>
            <li><a href="strategy.html">攻略</a></li>
            <li><a href="exhibition.html">展示</a></li>
            <li><a href="material.html">素材</a></li>
            <li><a href="${pageContext.request.contextPath}/user/version">版本</a></li>
        </ul>
        <div align="right">
            <a href="${pageContext.request.contextPath}/user/tologin">用户登录</a>
            <a href="${pageContext.request.contextPath}/admin/tologin">管理员登录</a>
        </div>
        <div class="head_r">
            <div class="lang">
                <a href="">中文</a><span>|</span><a href="">English</a>
            </div>
            <div class="search">
                <input name="" type="text" placeholder="Search…">
                <input name="" type="submit" value="">
            </div>
        </div>
    </div>
</div>
<!--头部-->
<!--幻灯片-->
<div id="banner" class="banner">
    <div id="owl-demo" class="owl-carousel">
        <a class="item" target="_blank" href="" style="background-image:url(${pageContext.request.contextPath}/Assets/upload/龙门拱月.jfif)">
            <img src="../../../Assets/upload/龙门拱月.jfif" alt="">
        </a>
        <a class="item" target="_blank" href="" style="background-image:url(${pageContext.request.contextPath}/Assets/upload/落日黄昏.jfif)">
            <img src="../../../Assets/upload/落日黄昏.jfif" alt="">
        </a>
        <a class="item" target="_blank" href="" style="background-image:url(${pageContext.request.contextPath}/Assets/upload/漫天星子.jfif)">
            <img src="../../../Assets/upload/漫天星子.jfif" alt="">
        </a>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="i_name">
    <div class="kuang">
        <div class="n_m">
            <p>Existing Map</p>
            目前已有地图
        </div>
    </div>
</div>
<ul class="i_m i_ma clearfix">
    <li>
        <a href="">
            <div class="tu">
                <img src="${pageContext.request.contextPath}/Assets/images/蒙德.jpeg" class="hei" alt=""/>
                <!-- <img src="Assets/images/d1_1.png" class="bai" alt=""/> -->
            </div>
            <div class="title">蒙德</div>
            <div class="des">风神巴巴托斯的信仰起源地，风居住的地方</div>
        </a>
    </li>
    <li>
        <a href="">
            <div class="tu">
                <img src="${pageContext.request.contextPath}./Assets/images/蒙德.jpeg" class="hei" alt=""/>
                <!-- <img src="Assets/images/d2.png" class="hei" alt=""/> -->
                <!-- <img src="Assets/images/d2_1.png" class="bai" alt=""/> -->
            </div>
            <div class="title">璃月</div>
            <div class="des">岩神摩拉克斯</div>
        </a>
    </li>
    <li>
        <a href="">
            <div class="tu">
                <img src="${pageContext.request.contextPath}/Assets/images/蒙德.jpeg" class="hei" alt=""/>
                <!-- <img src="Assets/images/d3.png" class="hei" alt=""/> -->
                <!-- <img src="Assets/images/d3_1.png" class="bai" alt=""/> -->
            </div>
            <div class="title">稻妻</div>
            <div class="des">雷电将军巴尔泽布的统领地</div>
        </a>
    </li>
    <li>
        <a href="">
            <div class="tu">
                <img src="${pageContext.request.contextPath}/Assets/images/蒙德.jpeg" class="hei" alt=""/>
                <!-- <img src="Assets/images/d4.png" class="hei" alt=""/> -->
                <!-- <img src="Assets/images/d4_1.png" class="bai" alt=""/> -->
            </div>
            <div class="title">枫丹</div>
            <div class="des">水之国</div>
        </a>
    </li>
</ul>
