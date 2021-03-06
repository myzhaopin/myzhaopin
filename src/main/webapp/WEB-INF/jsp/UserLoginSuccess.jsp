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
        * {
            background: none repeat scroll 0 0 transparent;
            border: 0 none;
            margin: 0;
            padding: 0;
            vertical-align: baseline;
        }

        body {
            min-height: 600px;
            min-width: 1280px;
            overflow-y: auto;
            overflow-x: hidden;
        }

        .list_item_bot .li_b_l span {
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            vertical-align: middle;
            font-size: 12px;
            padding: 0 5px;
        }

        .wrapper {
            margin-top: 80px;
        }

        #left {
            position: relative;
            float: left;
            width: 200px;
            margin: 5px 12px 45px 2px;
            left: 5px;
            border-color: #FFFFFF;
            border-width: 2px;
            border-style: solid;
            border-radius: 10px;
            -moz-box-shadow: 6px 6px 12px #282828;
            -webkit-box-shadow: 6px 6px 12px #282828;
        }

        #right {
            position: relative;
            float: left;
            width: 80%;
            margin: 5px;
            left: 5px;
            border-color: #FFFFFF;
            border-width: 2px;
            border-style: solid;
            border-radius: 10px 10px;
            -moz-box-shadow: 6px 6px 12px #282828;
            -webkit-box-shadow: 6px 6px 12px #282828;
        }

        iframe {
            width: 100%;
            height: 100%;
            background: #FFF;
            position: relative;
            border-radius: 10px;
            overflow: hidden;
        }

        #footer {
            text-align: center;
            position: absolute;
            float: left;
            left: 0px;
            width: 100%;
            height: 55px;
            vertical-align: middle;
        }

        #iframe_left,#left,#iframe_right,#right{
            min-height: 350px;
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
                    <a href="Home">回到主页&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="wrapper">
    <div id="left">
        <iframe src="UserLeft" id="iframe_left"></iframe>
    </div>
    <div id="right">
        <!--<iframe id="iframe_right" name="iframe_right"></iframe>-->
        <iframe src="MyResumes" id="iframe_right" name="iframe_right"></iframe>
    </div>
    <div></div>
    <!--class="panel-footer"-->
    <footer  id="footer" class="panel-footer">
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
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>

<script type="text/javascript">
    function screenAdapter() {
        document.getElementById('footer').style.top = document.documentElement.scrollTop + document.documentElement.clientHeight - document.getElementById('footer').offsetHeight + "px";
        document.getElementById('right').style.width = window.screen.width - 268 + "px";
    }

    function reinitframe() {
        var riframe = document.getElementById("iframe_right");
        try {
            document.getElementById('left').style.height = riframe.contentWindow.document.documentElement.scrollHeight + "px";
            document.getElementById('right').style.height = riframe.contentWindow.document.documentElement.scrollHeight + "px";
        } catch (ex) {
        }
    }

    window.onscroll = function () {
        screenAdapter();
        reinitframe();
    };
    window.onresize = function () {
        screenAdapter();
        reinitframe();
    };
    window.onload = function () {
        screenAdapter();
        reinitframe();
    };

//    window.setInterval("reinitframe()", 200);
</script>
</html>