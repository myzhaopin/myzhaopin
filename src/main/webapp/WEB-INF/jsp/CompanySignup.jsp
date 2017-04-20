<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>公司注册</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            font: 400 12px/14px Geneva, "宋体", Tahoma, sans-serif;
            background-color: #ffffff;
        }

        .bg {
            background: url("images/body.png") repeat-x;
        }

        .container {
            width: 956px;
            margin: 0 auto;
            background-color: #2aabd2;
        }

        .header {
            height: 94px;
            padding: 0;
            margin-right: -15px;
            margin-left: -15px;
            background: url(images/bg_chs.jpg) center top no-repeat;
        }

        .header .login {
            float: right;
            color: #ffffff;
            font-size: larger;
            margin: 65px 30px 0 0;
            cursor: pointer;
        }

        #content {
            background-color: #f8fdff;
        }


        .right {
            background: url(images/right_1600.png) right top no-repeat #f8fdff;
        }

        .form-register {
            max-width: 330px;
            margin: 30px auto;
        }

        .btn-register {
            width: 100%;
        }

        .left a.cur span {
            display: block;
            color: #fff;
        }

        .left a.nav_box span{
            color: #616c72;
        }

        .footer{
            text-align: center;
        }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="hbg" class="bg">

    <div class="container">

        <div id="header" class="header">
            <a class="login" href="Users_login.jsp" title="">登录</a>
            <a class="login" href="index.jsp" title="">回到主页</a>
        </div>
        <div id="content" class="row clearfix">
            <div class="right">

                <form role="form-register" class="form-register" method="post" action="CompanySignup">
                    <!--<h4 class="form-register-header">-->
                    <!--免费开通五邑大学招聘系统账号：-->
                    <!--</h4>-->
                    <div class="form-group">
                        <label for="email">注册账号：</label><input class="form-control" id="email" type="text"
                                                                   required="required" name="account"/>
                    </div>
                    <div class="form-group">
                        <label for="PSW">创建密码：</label><input class="form-control" id="PSW" type="password"
                                                             required="required" name="passwd"/>
                    </div>
                    <div class="form-group">
                        <label for="sencondPSW">确认密码：</label><input class="form-control" id="sencondPSW" type="password"
                                                                    required="required"/>
                    </div>
                    <div class="form-group">
                        <label for="realName">公司名称：</label><input class="form-control" id="realName" type="text"
                        												name="companyName"/>
                    </div>
                    <div class="form-group">
                        <label for="sex">地址：</label><input class="form-control" id="sex" type="text" name="location"/>
                    </div>
                    <div class="form-group">
                        <label>公司简介:<textarea id="intro" class="form-group" rows="13" cols="45" name="introdution"></textarea></label>
                    </div>
                    <button type="submit" class="btn btn-success btn-register">立即注册</button>
                </form>

            </div>
        </div>

    </div>
</div>

<footer  class="panel-footer footer" style="text-align: center">
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
