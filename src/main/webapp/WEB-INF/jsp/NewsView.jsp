<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="icon" href="images/favicon.ico">-->

    <title>查看新闻</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        body {
            overflow-x: hidden;
            overflow-y: visible;
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

        footer {
            text-align: center;
        }
        .text_blod_title {
            font-size: 25px;
            color: #134162;
            text-decoration: none;
            font-weight: bold;
        }

        .date{
            line-height: 30px;
        }

    </style>

</head>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img alt="Brand" src="images/favicon.ico">
            </a>
        </div>
        <div class="nav navbar-nav">
            <h3>新闻详情</h3>
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
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column right">
            <form name="form1" method="get" action="NewsDetail">
                <table width="835" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="64" align="center"></td>
                        <td width="740.8" height="30" align="left" valign="top"><span class="text_blod_title">${news.title}</span></td>
                    </tr>
                    <tr class="date">
                        <td width="64" align="center"></td>
                        <td width="740.8" height="30" align="left" valign="top"><span>${news.date}</span></td>
                    </tr>
                    <tr>
                        <td height="15" colspan="2"><img src="images/line1.jpg" width="835" height="6"></td>
                    </tr>
                    <tr>
                        <td width="64" align="center"></td>
                        <td width="740.8" height="30" align="left" valign="top"><img src="${news.image}" style="width:768px;height:250px;"/></td>
                    </tr>
                    <tr>
                        <td width="64" align="center"></td>
                        <td width="740.8" height="30" align="left" valign="top"><p>${news.content}</p></td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <td height="20"></td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <td height="2" background="images/bottom_point.gif"></td>
                    </tr>
                </table>
            </form>
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
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>