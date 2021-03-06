<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="images/favicon.ico">-->

    <title>工作</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .btn {
            float: right;
        }

        .detail {
            border: 1px solid #ededed;
            margin: 0 0 20px 0;
        }

        .list_item_top {
            margin: 10px 10px auto 10px;
            height: 68px;
        }

        .list_item_top .position {
            float: left;
            width: 400px;
        }

        .list_item_top .company {
            float: left;
            height: 54px;
            margin-top: 10px;
            margin-left: 200px;
        }

        .list_item_top .sendResume {
            float: right;
            margin-top: 10px;
        }

        .list_item_top .position .p_top {
            height: 34px;
        }

        .list_item_top .position .p_top .where {
            float: left;
            color: #337ab7;
        }

        .list_item_top .position .p_top .job {
            font-size: 16px;
            margin: 0;
            float: left;
            padding-right: 3px;
            color: #337ab7;
        }

        .list_item_top .position .p_top .time {
            float: left;
            font-size: 14px;
        }

        .list_item_top .position .p_bot .money {
            color: #fa6c00;
            padding-right: 20px;
        }

        .list_item_bot {
            background-color: #fafafa;
            padding-right: 20px;
            height: 30px;
        }

        .list_item_bot .li_b_l {
            float: left;
            margin-left: 10px;
            line-height: 30px;
        }

        .list_item_bot .li_b_l span {
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            vertical-align: middle;
            font-size: 12px;
            padding:0 5px;
        }

        .list_item_bot .li_b_r {
            float: right;
            margin-right: 260px;
            line-height: 30px;
        }

        footer {
            text-align: center;
        }
    </style>

</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img alt="Brand" src="images/favicon.ico">
            </a>
        </div>
        <div class="nav navbar-nav">
            <h3>工作岗位</h3>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="Home">回到主页&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row clearfix" style="margin-top: 80px">
        <div class="col-md-12 column">
            <div class="detail">
                <div class="list_item_top">
                    <div class="position">
                        <div class="p_top">
                            <h2 class="job">${job.title}</h2>
                            <span class="where">[<em>${company.location}</em>]</span>
                            </a>
                            <span class="time">${job.date}</span>
                        </div>
                        <div class="p_bot">
                            <div class="li_b_l">
                                <span class="money">薪酬：${job.salary}</span>

                            </div>
                        </div>
                    </div>

                    <div class="company">
                        <div class="company_name">
                            <a href="#">${company.companyName}</a>
                        </div>
                        <div class="industry">
                            ${job.industryName}
                        </div>
                    </div>
                    <div class="sendResume">
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">投递简历
                                <span class="caret"></span>
                            </button>

                            <ul class="dropdown-menu" role="menu">
                                <c:forEach items="${resumes}" var="item">
                                    <li><a href="JobApply?jobId=${job.jobId }&resumeId=${item.resumeId}">简历:${item.profession}</a></li>
                                </c:forEach>
                                <input type="hidden" name="jobId" value="${job.jobId}"/></td>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="jumbotron">
                <h2>
                    职位简介
                </h2>
                <p>
                    ${job.information}
                </p>
                <p>
                    <a class="btn btn-primary btn-large" href="#">Learn more</a>
                </p>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="jumbotron">
                <h2>
                    公司简介
                </h2>
                <p>
                    ${company.introdution}
                </p>
                <%--<p>--%>
                    <%--<a class="btn btn-primary btn-large" href="#">Learn more</a>--%>
                <%--</p>--%>
            </div>
        </div>
    </div>
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
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>