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

    <title>我的简历详情</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">

        .updateData, .MyData, .loginOut {
            font-size: 35px;
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
            font-size: 20px;
            color: #333333;
            text-decoration: none;
        }

        .text_red {
            font-size: 12px;
            color: #e25c2e;
            text-decoration: none;
            line-height: 28px;
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
                <img alt="Brand" src="imagesBackup/favicon.ico">
            </a>
        </div>
        <div class="nav navbar-nav">
            <h3>我的简历</h3>
        </div>
        <div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="index.html">回到主页&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-2 column left">
            <div><a href="#" class="updateData">修改资料</a></div>
            <div><a href="#" class="MyData">我的简历</a></div>
            <div><a href="#" class="loginOut">退出</a></div>
        </div>
        <div class="col-md-10 column right">

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
                                class="text_blod_title">查看个人信息</span></td>
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
                                    <td height="15" colspan="4" align="left" class="text_title">个人详细信息</td>
                                </tr>
                                <tr>
                                    <td height="10" colspan="4"></td>
                                </tr>

                               
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">真实姓名：</td>
                                    <td align="left" class="text_cray">${resume.name}</td>
                                </tr>
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">性 别：</td>
                                    <td align="left" class="text_cray"><input id="man" type="radio" checked="checked"
                                                                              name="1"/>男<input id="woman" type="radio"
                                                                                                name="1"/>女
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">工作年龄：</td>
                                    <td align="left" class="text_cray">${resume.workAge}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">生日：</td>
                                    <td align="left" class="text_cray">${resume.birthday}</td>
                                </tr>
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">居住地：</td>
                                    <td colspan="2" align="left" class="text_cray">${resume.location}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">手机号码：</td>
                                    <td colspan="2" align="left" class="text_cray">${resume.phoneNum}</td>
                                </tr>
                                <tr>
                                    <td width="20" height="40" align="center" class="text_red">*</td>
                                    <td width="100" height="40" align="left" class="text_cray1">邮箱：</td>
                                    <td colspan="2" align="left" class="text_cray">${resume.email}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">职业：</td>
                                    <td colspan="3" align="left" class="text_cray">${resume.profession}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">工作经验：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray">${resume.workExperience}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">项目经验：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray">${resume.projectExperience}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">教育情况：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray">${resume.educationExperience}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">在校情况：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray">${resume.graduteInfo}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">技能特长：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray">${resume.skillsSpeciality}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">附加信息：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray">${resume.additionalInfo}
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20" height="40"></td>
                                    <td width="100" height="40" align="left" class="text_cray1">是否公开：</td>
                                    <td height="40" colspan="2" align="left" class="text_cray"><input id="yes"
                                                                                                      type="radio"
                                                                                                      checked="checked"
                                                                                                      name="1"/>是<input
                                            id="no" type="radio" name="1"/>否
                                    </td>
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
                                    <td height="30" align="center"><input name="button" type="button" class="butxg"
                                                                          id="button" value="" onClick=""></td>
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
