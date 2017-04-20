<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>工作详情</title>

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
            overflow-y: hidden;
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

        .butxg {
            width: 78px;
            height: 26px;
            background-image: url(images/button_xg.gif);
            border: 0;
        }

        .butgo {
            width: 150px;
            height: 26px;
            background-image: url(images/button_go.jpg);
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

        .intro {
            padding-top: 1px;
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
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column right">

            <form name="form1" method="post" action="ZhaoPinDetail">
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
                                class="text_blod_title">查看工作详情</span></td>
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
                                    <td height="15" colspan="4" align="left" class="text_title">工作详情</td>
                                </tr>
                                <tr>
                                    <td height="10" colspan="4"></td>
                                </tr>

                                <tr>
                                    <td width="120" height="40" align="left" class="text_cray1">标 题：</td>
                                    <td width="350" align="left" class="text_cray"><input class="form-control" type="text" name="title" required="required" value="${job.title }"></td>


                                </tr>
                                <tr>
                                    <td width="120" height="40" align="left" class="text_cray1">薪 资：</td>
                                    <td align="left" class="text_cray"><input class="form-control" type="text" name="salary" required="required" value="${job.salary }"></td>
                                </tr>
                                <tr>
                                    <td width="120" height="40" align="left" class="text_cray1 intro">简 介：</td>
                                    <td align="left" class="text_cray"><textarea id="intro" class="form-control" rows="13" cols="45" name="information">${job.information }</textarea></td>
                                </tr>
                                <tr>
                                    <td width="120" height="40" align="left" class="text_cray1 intro">行业：</td>
                                    <td align="left" class="text_cray">
                                        <select id="industryName" name="industryName" class="form-control">
                                            <option value ="IT">IT</option>
                                            <option value ="房地产">房地产</option>
                                            <option value="教育">教育</option>
                                            <option value="旅游">旅游</option>
                                            <option value="金融">金融</option>
                                            <option value="餐饮">餐饮</option>
                                            <option value="其他">其他</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="120" height="40" align="left" class="text_cray1">是否通过审核：</td>
                                    <c:if test="${job.verify==true}">
                                        <td align="left" class="text_cray"><input readonly class="form-control" type="text" value="是"/></td>
                                        <input type="hidden" name="verify" value="true"/>
                                    </c:if>
                                    <c:if test="${job.verify==false}">
                                        <td align="left" class="text_cray"><input readonly class="form-control" type="text" value="否"/></td>
                                        <input type="hidden" name="verify" value="false"/>
                                    </c:if>
                                </tr>

                            </table>
                            <br>
                            <table width="100%" border="0" cellspacing="0">
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                            <table width="48%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="30" align="center"><input name="button" type="submit" class="butxg"
                                                                          id="button" value="" onClick=""></td>
                                    <td height="30" align="right"><input name="button" type="button" class="butgo"
                                                                         value="" onClick="window.location='EmployResumesByJobId?jobId=${job.jobId}'"></td>
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
                <input type="hidden" name="jobId" value="${job.jobId}"/>
                <input type="hidden" name="companyId" value="${currCompany.companyId}"/>
            </form>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>

<script>
    //根据industryName选中
    $(document).ready(function () {
        $("#industryName option[value='${job.industryName}").attr('selected', true);
    });
</script>
</html>
