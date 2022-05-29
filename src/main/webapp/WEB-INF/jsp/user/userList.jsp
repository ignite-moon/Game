<%--
  Created by IntelliJ IDEA.
  User: 86155
  Date: 2022/5/3
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="icon" href="${pageContext.request.contextPath}/images/icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.4.1/css/bootstrap.min.css"/>
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
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <style>
        .editor{
            color: #79e5f8;
        }
        .delete{
            color: #f84c66;
        }
    </style>
</head>
<body>
<%--菜单栏--%>
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
                <a href="../html/index.html" class="InitialPage"><i class="icon-dashboard"></i>首页</a>
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
                            <a href="layer.html">系统设置</a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </nav>
        <footer class="side-footer">© Gost 版权所有</footer>
    </div>
    <%--中心显示部分--%>
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
                        <a href="javascript:void(0)" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
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
                            用户列表
                        </p>
                        <div align="right">
                            <form action="${pageContext.request.contextPath}" method="post" >
                                <input type="search" name="id" class="icon-search" placeholder="">
                                <input type="submit" value="搜索">
                            </form>
                        </div>
<%--                        <a href="${pageContext.request.contextPath}/excel/import">导入表格</a>--%>
                        <form action="${pageContext.request.contextPath}/excel/import" method="post" enctype="multipart/form-data">
                            <input type="file" name="file">
                            <input type="submit" value="导入">
                        </form>
                        <a href="${pageContext.request.contextPath}/excel/export">导出</a>
                    </header>
                    <hr>
                </section>
                <div class="panel panel-default">
                    <div class="container">
                            <table class="table table-hover table-bordered">
                                <tr>
                                    <th>编号</th>
                                    <th>姓名</th>
                                    <th>密码</th>
                                    <th>操作</th>
                                </tr>
                                <%-- 填充数据  --%>
                                <c:forEach items="${allUser.list}" var="user">
                                    <tr>
                                        <th>${user.id}</th>
                                        <th>${user.name}</th>
                                        <th>${user.password}</th>
                                        <th>
                                            <a class="editor" href="${pageContext.request.contextPath}/user/userUpdate">编辑</a>
                                            <a class="delete" href="${pageContext.request.contextPath}/user/userDelete?id=${user.id}">删除</a>
                                        </th>
                                    </tr>
                                </c:forEach>
                            </table>
                    </div>
                    <%-- 分页--%>
                    <div class="row">
                        <%-- 分页文字信息--%>
                        <div class="col-md-6">
                            当前第${allUser.pageNum}页,总${allUser.pages}页,共${allUser.total}条记录
                        </div>
                          <div class="col-md-6">
                            <%--分页信息 --%>
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/user/userList?p=1">首页</a>
                                    </li>
                                    <c:if test="${allUser.hasPreviousPage}">
                                        <li>
                                                <%-- 如果有上一页，当前页码减1 --%>
                                            <a href="${pageContext.request.contextPath}/user/userList?p=${allUser.pageNum-1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                    </c:if>
                                    <%-- 当前页码--%>
                                    <c:forEach items="${allUser.navigatepageNums}" var="pageNum">
                                        <c:if test="${pageNum==allUser.pageNum}">
                                            <li class="active"><a href="#">${pageNum}</a></li>
                                        </c:if>
                                        <c:if test="${pageNum!=allUser.pageNum}">
                                            <li><a href="${pageContext.request.contextPath}/user/userList?p=${pageNum}">${pageNum}</a></li>
                                        </c:if>
                                    </c:forEach>
                                    <%-- 是否有下一页 --%>
                                    <c:if test="${allUser.hasNextPage}">
                                        <li>
                                                <%-- 如果有下一页，当前页码加1 --%>
                                            <a href="${pageContext.request.contextPath}/user/userList?p=${allUser.pageNum+1}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </c:if>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/user/userList?p=${allUser.pages}">末页</a>
                                    </li>
                                </ul>
                            </nav>
                          </div>
                    </div>
                </div>
                <!--开始::结束-->
            </div>
        </main>
        <%--底部--%>
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
<script>

</script>
</body>
</html>