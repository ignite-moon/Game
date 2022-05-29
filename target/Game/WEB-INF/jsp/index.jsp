<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理</title>
    <meta name="keywords"  content="设置关键词..." />
    <meta name="description" content="设置描述..." />
    <meta name="author" content="DeathGhost" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link rel="icon" href="../../images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <script src="${pageContext.request.contextPath}/javascript/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/plug-ins/customScrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/plug-ins/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/plug-ins/layerUi/layer.js"></script>
    <script src="${pageContext.request.contextPath}/editor/ueditor.config.js"></script>
    <script src="${pageContext.request.contextPath}/editor/ueditor.all.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/plug-ins/pagination.js"></script>
    <script src="${pageContext.request.contextPath}/javascript/public.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.4.1/css/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="main-wrap">
    <div class="side-nav">
        <div class="side-logo">
            <div class="logo">
				<span class="logo-ico">
					<i class="i-l-1"></i>
					<i class="i-l-2"></i>
					<i class="i-l-3"></i>
				</span>
                <strong>后台管理</strong>
            </div>
        </div>

        <nav class="side-menu content mCustomScrollbar" data-mcs-theme="minimal-dark">
            <h2>
                <a href="${pageContext.request.contextPath}/user/first" class="InitialPage"><i class="icon-dashboard"></i>首页</a>
            </h2>
            <ul>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-columns"></i>用户管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/user/userAdd">添加用户</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/user/userUpdate">修改用户</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/user/userList">显示所有用户</a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-inbox"></i>展示管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/characters/charAdd">添加展示</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/characters/charUpdate">修改展示</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/characters/charList">显示所有</a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-inbox"></i>攻略管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/str/strAdd">添加攻略</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/str/strUpdate">修改攻略</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/str/strList">显示所有攻略</a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-inbox"></i>素材管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/mat/matAdd">添加素材</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/mat/matUpdate">修改素材</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/mat/matList">显示所有素材</a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-inbox"></i>版本介绍管理<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ver/verAdd">添加版本介绍</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ver/verUpdate">修改版本介绍</a>
                        </dd>
                        <dd>
                            <a href="${pageContext.request.contextPath}/ver/verList">显示所有版本介绍</a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                            <i class="icon-star"></i>设置<i class="icon-angle-right"></i>
                        </dt>
                        <dd>
                            <a href="#">系统设置</a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </nav>
        <footer class="side-footer">© Gost 版权所有</footer>
    </div>

    <div class="content-wrap">
        <header class="top-hd">
            <div class="hd-lt">
                <a class="icon-reorder"></a>
            </div>
            <div class="hd-rt">
                <ul>
                    <li>
                        <a href="#" target="_blank"><i class="icon-home"></i>前台访问</a>
                    </li>
                    <li>
                        <a><i class="icon-random"></i>清除缓存</a>
                    </li>
                    <li>
                        <a><i class="icon-user"></i>管理员:<em>Gost</em></a>
                    </li>
                    <li>
                        <a><i class="icon-bell-alt"></i>系统消息</a>
                    </li>
                    <li>
<%--                        <a href="javascript:void(0)" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>--%>
                        <a href="${pageContext.request.contextPath}/user/tologin" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
                    </li>
                </ul>
            </div>
        </header>
        <main class="main-cont content mCustomScrollbar">
            <div class="page-wrap">
                <!--开始::内容-->
                <section class="page-hd">
                    <header>
                        <!-- <h2 class="title">动画效果</h2> -->
                        <p class="title-description">
                            数据加载中...
                        </p>
                    </header>
                    <hr>
                </section>
                <div class="panel panel-default">
                    <div class="panel-bd">
                        <span><span class="icon-spin icon-spinner"></span></span>

                    </div>
                </div>
                <!--开始::结束-->
            </div>
        </main>
        <footer class="btm-ft">
            <p class="clear">
                <span class="fl">©Copyright 2022 <a href="#" title="DeathGhost" target="_blank">Gost.cn</a></span>
                <span class="fr text-info">
					<em class="uppercase">
						<i class="icon-user"></i>
						author:gost
					</em> |
					<em class="uppercase"><i class="icon-envelope-alt"></i>
						 <a href="https://ys.mihoyo.com/?utm_source=adbdsem016&from_channel=adbdsem#/" target="_blank">原神yyds</a>
					</em>
					<a onclick="reciprocate()" class="text-primary"><i class="icon-qrcode"></i>...</a>
				</span>
            </p>
        </footer>
    </div>
</div>
</body>
</html>