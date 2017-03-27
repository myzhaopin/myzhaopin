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

    <title>我的简历</title>

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

        .updateData, .MyData, .loginOut {
            font-size: 20px;
            line-height: 90px;
        }

        .job {
            float: left;
            margin-left: 10px;
            color:#2b542c;
        }

        .edit{
            float: right;
            margin-top: 20px;
            margin-right: 30px;
        }

        .detail {
            /*background-color: #9acfea;*/
            border: 1px solid #ededed;
            margin: 0 0 20px 0;
            min-height: 70px;
        }

        .list_item_bot .li_b_l span {
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            vertical-align: middle;
            font-size: 12px;
            padding: 0 5px;
        }

        .container {
            margin-top: 80px;
        }

        .left {
            border: 1px solid #dcdcdc;
            min-height: 450px;
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
            <h3>我的简历</h3>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="home.html">回到主页&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column"></div>
        <div class="col-md-2 column left">
            <div><a href="#" class="updateData">修改资料</a></div>
            <div><a href="#" class="MyData">我的简历</a></div>
            <div><a href="#" class="loginOut">退出</a></div>
        </div>
        <div class="col-md-6 column right">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">简历1</h2>
                        <button type="button" class="btn btn-default edit">编辑</button>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">简历2</h2>
                        <button type="button" class="btn btn-default edit">编辑</button>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">简历3</h2>
                        <button type="button" class="btn btn-default edit">编辑</button>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">简历4</h2>
                        <button type="button" class="btn btn-default edit">编辑</button>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">简历5</h2>
                        <button type="button" class="btn btn-default edit">编辑</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2 column"></div>
    </div>
</div>
</div>
<footer class="panel-footer">
    <!-- Footnotes -->
    <div id="wyu-footer-column">
        <!-- Toolbar -->
        <div id="wyu-footer-notes">
            <div class="addr">
                <p>版权所有&copy;五邑大学&nbsp;&nbsp;
                    地址：广东江门市东成村22号&nbsp;&nbsp;
                    邮编：529020&nbsp;&nbsp;
                    五邑大学党政办：(0750)3296113&nbsp;&nbsp;
                    传真：(0750)3358395&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    粤ICP备15096031号</p>
                <p><a href="zszx.html" target="_self">招生咨询</a>&nbsp;&nbsp;全日制本科招生咨询：(0750)3296263，3296265&nbsp;&nbsp;
                    网络管理中心：(0750)3296114&nbsp;&nbsp;
                    校长信箱：<a href="mailto:wyuxfyx@126.com">wyuxfyx@126.com</a></p>
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