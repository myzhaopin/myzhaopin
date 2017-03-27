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
    <link rel="icon" href="images/favicon.ico">

    <title>企业信息详情</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">

        .CompanyData, .jobData,.checkZhaopin, .loginOut {
            font-size: 20px;
            line-height: 90px;
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
            margin-top: 70px;
            margin-bottom: 10px;
        }

        footer {
            text-align: center;
        }

        .butxg {
            width: 78px;
            height: 26px;
            background-image: url(images/button_xg.gif);
            border: 0;
        }

        .text_cray {
            padding-top: 15px;
            font-size: 16px;
            color: #6b6b6b;
            text-decoration: none;
            line-height: 17px;
        }

        .text_cray1 {
            font-size: 18px;
            color: #333333;
            text-decoration: none;
        }

        .intro{
            line-height: 25px;
        }

        .text_title {
            font-size: 20px;
            font-weight: bolder;
            color: #ff7200;
            text-decoration: none;;
        }

        .text_blod_title {
            font-size: 25px;
            color: #134162;
            text-decoration: none;
            font-weight: bold;
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
            <h3>我的企业</h3>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="home.jsp">回到主页&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row clearfix">
        <dic class="col-md-1 column"></dic>
        <div class="col-md-2 column left">
            <div><a href="#" class="CompanyData">企业信息</a></div>
            <div><a href="#" class="jobData">招聘信息</a></div>
            <div><a href="#" class="checkZhaopin">查看求职信息</a></div>
            <div><a href="#" class="loginOut">退出</a></div>
        </div>
        <div class="col-md-8 column right">

            <form name="form1" method="post">
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <td height="30">&nbsp;</td>
                    </tr>
                </table>
                <table width="835" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="20" colspan="2" align="center"></td>
                    </tr>
                    <tr>
                        <td width="64" align="center"></td>
                        <td width="771" height="30" align="left" valign="top"><span
                                class="text_blod_title">查看企业信息</span></td>
                    </tr>
                    <tr>
                        <td height="15" colspan="2"><img src="images/line1.jpg" width="835" height="6"></td>
                    </tr>
                    <tr>
                        <td colspan="2" valign="top">
                            <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="20" colspan="4"></td>
                                </tr>
                                <tr>
                                    <td height="15" colspan="4" align="left" class="text_title">企业详细信息</td>
                                </tr>
                                <tr>
                                    <td height="10" colspan="4"></td>
                                </tr>

                                <tr>
                                    <td width="100" height="40" align="left" class="text_cray1">账 号：</td>
                                    <td width="350" align="left" class="text_cray"><%= user.getUsername() %></td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="left" class="text_cray1">密 码：</td>
                                    <td align="left" class="text_cray"><%= user.getRealname() %></td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="left" class="text_cray1">公司名：</td>
                                    <td align="left" class="text_cray"><%= user.getCompanyName() %></td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="left" class="text_cray1">地 址：</td>
                                    <td align="left" class="text_cray"><%=user.getCity().getProvince().getProvince()%></td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="left" class="text_cray1">行 业：</td>
                                    <td align="left" class="text_cray"><%= user.getCity().getCity() %></td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="left" class="text_cray1">简 介：</td>
                                    <td colspan="2" align="left" class="text_cray intro"><%=user.getCertType().getContent()%>asdf加；拉师弟解放路卡机施蒂利克附加拉师弟解放路卡机施蒂利克附加拉师弟解放路卡机施蒂利克附加拉师弟解放路卡机施蒂利克附加拉师弟解放路卡机施蒂利克附加拉师弟解放路卡机施蒂利克附加拉师弟解放路卡机施蒂利克附加
                                    </td>
                                </tr>
                                <tr>
                                    <td width="140" height="40" align="left" class="text_cray1">是否通过审核：</td>
                                    <td colspan="2" align="left" class="text_cray"><%= user.getCert() %></td>
                                </tr>

                            </table>
                            <br>
                            <table width="100%" border="0" cellspacing="0">
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                            <table width="263" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="30" align="center"><input name="button" type="button" class="butxg" id="button" value="" onClick=""></td>
                                </tr>
                            </table>
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
                </td>
                </tr>
                </table>
            </form>
        </div>
        <dic class="col-md-1 column"></dic>

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