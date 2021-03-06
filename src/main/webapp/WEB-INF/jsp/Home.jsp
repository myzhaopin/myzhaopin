<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>招聘系统</title>
    <link rel="icon" href="images/favicon.ico">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">

        .container {
            width: 956px;
            margin: 0 auto;
        }

        .navbar-right {
            display: block;
            margin-top: 7px;
        }

        .search {
            margin-top: 10px;
        }

        .lleft {
            height: 250px;
            float: left;
            background-color: #E8E8E8;
            padding-top: 30px;
        }

        .searchForm .search_input {
            float: left;
            height: 37px;
            width: 77%;
            border: 2px solid #2aabd2;
        }

        .searchForm .search_button {
            height: 37px;
            width: 23%;
            color: #ffffff;
            background-color: #2aabd2;
            border: 2px solid #2aabd2;
        }

        .jobimg {
            margin-top: 29px;
        }

        .pageNum {
            text-align: center;
        }

        .pagination {
            margin: 0 auto;
        }

        .btn {
            float: right;
        }

        .list_item_bot .li_b_l span {
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            vertical-align: middle;
            font-size: 12px;
            padding: 0 5px;
        }

        .table {
            margin-top: 15px;
        }

        footer {
            text-align: center;
        }

        .navbar-header {
            margin-top: 12px;
        }
    </style>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <img alt="Brand" src="images/favicon.ico">
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <c:if test="${sessionScope.currUser == null && sessionScope.currCompany == null}">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="UserLogin" id="loginText">登录</a>
                    </li>
                    <li>
                        <a href="UserSignup" id="signupText">注册</a>
                    </li>
                </ul>
            </c:if>
            <c:if test="${sessionScope.currUser != null}">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="UserLoginSuccess">欢迎您，${sessionScope.currUser.userName}</a>
                    </li>
                    <li>
                        <a href="Left">退出</a>
                    </li>
                </ul>
            </c:if>
            <c:if test="${sessionScope.currCompany != null}">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="CompanyLoginSuccess">欢迎您，${sessionScope.currCompany.account}</a>
                    </li>
                    <li>
                        <a href="Left">退出</a>
                    </li>
                </ul>
            </c:if>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <div class="carousel slide" id="carousel-550725" style="margin-top:70px;">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-550725">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-550725">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-550725">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="NewsView?newsId=${news1.idNews}"><img alt="" src="${news1.image}" style="width:926px;height:400px;"></a>
                        <div class="carousel-caption">
                            <h4>
                                ${news1.title}
                            </h4>
                        </div>
                    </div>
                    <div class="item">
                        <a href="NewsView?newsId=${news2.idNews}"><img alt="" src="${news2.image}" style="width:926px;height:400px;"/></a>
                        <div class="carousel-caption">
                            <h4>
                                ${news2.title}
                            </h4>
                        </div>
                    </div>
                    <div class="item">
                        <a href="NewsView?newsId=${news3.idNews}"><img alt="" src="${news3.image}" style="width:926px;height:400px;"/></a>
                        <div class="carousel-caption">
                            <h4>
                                ${news3.title}
                            </h4>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-550725" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-550725" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h1>
                招聘信息简介
            </h1>
            <p>
                XX招聘是全国性权威人才网站,为求职者提供最新最全的招聘信息,为企业提供网络招聘,校园招聘,猎头,培训,测评和人事外包等一站式专业人力资源服务.好工作上智联招聘.覆盖全国200多个城市,为求职者提供最准确,最全面的职位招聘信息,找工作信息,求职信息,最新人才招聘信息,为企业提供人才招聘、猎头、培训、测评和人事外包.
            </p>
        </div>
    </div>
    <div class="row clearfix search">
        <div class="column col-md-3 lleft">
            <div class="jobs">
                <h2>技术</h2>
                <a href="#">java</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#">PHP</a><div></div>
                <a href="#">C++</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#">Android</a><div></div>
                <a href="#">iOS</a>
            </div>
        </div>
        <div class="column col-md-9 rright">
            <form id="searchForm" class="searchForm" name="searchForm" action="" method="get">
                <input id="search_inpt" class="search_input" placeholder="搜索职位、公司或地点" type="text" tabindex="1"
                       maxlength="64">
                <input id="search_button" class="search_button " value="搜索" type="submit">
            </form>
            <img class="img-responsive jobimg" src="images/job1.JPG">
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <h2>招聘信息</h2>
            <table class="table table-hover">
                <thead>
                <tr class="info">
                    <th>
                        职位名
                    </th>
                    <th>
                        公司名
                    </th>
                    <th>
                        工作地点
                    </th>
                    <th>
                        薪资/月
                    </th>
                    <th>
                        发布时间
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${jobDetails}" var="item">
                    <tr onclick="location.href='Job?jobId=${item.jobId}&companyId=${item.companyId}'">
                        <td>
                                ${item.title}
                        </td>
                        <td>
                                ${item.companyName}
                        </td>
                        <td>
                                ${item.location}
                        </td>
                        <td>
                                ${item.salary}
                        </td>
                        <td>
                                ${item.date}
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

    <%--<div class="pageNum">--%>
        <%--<ul class="pagination">--%>
            <%--<li>--%>
                <%--<a href="#"><<</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#">1</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#">2</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#">3</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#">4</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#">5</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#">>></a>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>

</div>

<footer class="panel-footer footer">
    <!-- Footnotes -->
    <div id="wyu-footer-column">
        <!-- Toolbar -->
        <div id="wyu-footer-notes">
            <div class="addr">
                <p>版权所有&copy;XX公司&nbsp;&nbsp;
                    地址：XXXXXXXXXXX22号&nbsp;&nbsp;
                    邮编：XXXXXX&nbsp;&nbsp;
                    联系电话：(0750)8888888&nbsp;&nbsp;
                    传真：(0750)888888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    粤ICP备15096031号</p>
                <p><a href="zszx.html" target="_self">XX咨询</a>&nbsp;&nbsp;XXXXXXXXXXX咨询：(0750)3296263，3296265&nbsp;&nbsp;
                    网络管理中心：(0750)666666&nbsp;&nbsp;
                    董事长信箱：<a href="mailto:wyuxfyx@126.com">xxxxxxx@126.com</a></p>
            </div>
        </div>
        <!-- /Toolbar -->
    </div>
    <!-- /Footnotes -->
</footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

</body>
</html>
