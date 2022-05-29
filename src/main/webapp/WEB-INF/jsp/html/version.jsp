<%--
  Created by IntelliJ IDEA.
  User: 86155
  Date: 2022/5/18
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <title>原神</title>
    <link rel="stylesheet" type="text/css" href="../../../Assets/css/reset.css"/>
    <script type="text/javascript" src="../../../Assets/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../../../Assets/js/js_z.js"></script>
    <script type="text/javascript" src="../../../Assets/js/banner.js"></script>
    <link rel="stylesheet" type="text/css" href="../../../Assets/css/thems.css">
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
        <div class="logo"><a href=""><img src="../../../Assets/images/雷神.jpg" alt="原神"/></a></div>
        <ul class="nav clearfix">
            <li ><a href="${pageContext.request.contextPath}/user/first">首页</a></li>
            <li><a href="about.html">关于</a></li>
            <li><a href="strategy.html">攻略</a></li>
            <li><a href="exhibition.html">展示</a></li>
            <li><a href="material.html">素材</a></li>
            <li class="now"><a href="${pageContext.request.contextPath}/user/version">版本</a></li>
        </ul>
        <div>
            <a href="login.html">登录</a>
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
<div class="scd clearfix">
    <div class="scd_l">
        <div class="s_name"><span>版本</span></div>
        <ul class="s_nav">
            <li class="now">
                <a href="">
                    2.5薄樱初绽时
                    <em>&nbsp;</em>
                </a>
            </li>
            <li>
                <a href="">
                    2.4
                    <em>&nbsp;</em>
                </a>
            </li>
            <li>
                <a href="">
                    2.3
                    <em>&nbsp;</em>
                </a>
            </li>
        </ul>
    </div>
    <div class="scd_r">
        <div class="r_top">
            <span>2.5薄樱初绽时</span>
            <div class="pst">
                <a href="${pageContext.request.contextPath}/user/first" class="home">首页</a>
                <a href="">版本</a>
                <a href="">2.5</a>
            </div>
        </div>
        <div class="s_ctn clearfix">
            <!-- <img src="Assets/upload/pic7.jpg" width="394" height="256" style="float:left; margin-right:20px;" alt=""/> -->
            <h1 style=" font-size:20px; padding:15px 0; font-weight:normal; color:#000;"></h1>
            <p>三界路飨祭：限时探索地图的活动，完成相应的探索任务，可以获得原石和四星法器【证誓之明瞳】的奖励。</p><br/>
            <p>神工天巧：在该活动中我们可以自由设计秘境，给其他玩家进行挑战哦！</p><br/>
            <p>曲生酌微梦：一个调酒小游戏，我们制作出订单要求的饮品即可获取各种奖励哦！</p><br/>
            <p>百人一揆：双人组队的副本任务，此前有出现过，大家应该不会陌生！</p><br/>
            <p>精通移涌：双倍天赋书活动。</p><br/>
        </div>
    </div>
</div>