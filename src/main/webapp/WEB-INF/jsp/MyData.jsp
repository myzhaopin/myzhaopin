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

    <title>我的基本资料</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">

        body{
            overflow-y: hidden;
            overflow-x: hidden;
        }

        .list_item_bot .li_b_l span {
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            vertical-align: middle;
            font-size: 12px;
            padding: 0 5px;
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
<div class="col-md-12 column right">
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
                        class="text_blod_title">查看个人基本资料</span></td>
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
                            <td width="120" height="40" align="left" class="text_cray1">用户名：</td>
                            <td width="350" align="left" class="text_cray"></td>
                            <td width="230" rowspan="5" align="center" background="images/bg_point_write.gif"
                                class="text_cray">
                                <img src="images/photo.jpg" width="139" height="139">
                            </td>

                        </tr>
                        <tr>
                            <td width="120" height="40" align="left" class="text_cray1">密 码：</td>
                            <td align="left" class="text_cray"></td>
                        </tr>
                        <tr>
                            <td width="120" height="40" align="left" class="text_cray1">性 别：</td>
                            <td align="left" class="text_cray"></td>
                        </tr>
                        <tr>
                            <td width="120" height="40" align="left" class="text_cray1">手机号码：</td>
                            <td align="left" class="text_cray"></td>
                        </tr>
                        <tr>
                            <td width="120" height="40" align="left" class="text_cray1">电子邮箱：</td>
                            <td align="left" class="text_cray"></td>
                        </tr>
                        <tr>
                            <td width="120" height="40" align="left" class="text_cray1">生 日：</td>
                            <td colspan="2" align="left" class="text_cray"></td>
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
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>