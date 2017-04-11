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

    <title>招聘信息</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        body{
            overflow-x: hidden;
            overflow-y: hidden;
        }
        .btn {
            float: right;
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
            background-color: #E8E8E8;
        }

        .detail {
            border: 1px solid #ededed;
            margin: 0 0 20px 0;
            min-height: 70px;
        }

        .deleteBorder{
            border: 0px;
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


    </style>

</head>

<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column right">
            <!--这里应该用ul li来把没一条包起来，动态判断有多少条就显示多少-->
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">招聘信息1</h2>
                        <a class="btn btn-default edit" href="ZhaoPinDetail" type="button">查看</a>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">招聘信息2</h2>
                        <a class="btn btn-default edit" href="ZhaoPinDetail" type="button">查看</a>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">招聘信息3</h2>
                        <a class="btn btn-default edit" href="ZhaoPinDetail" type="button">查看</a>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">招聘信息4</h2>
                        <a class="btn btn-default edit" href="ZhaoPinDetail" type="button">查看</a>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail">
                        <h2 class="job">招聘信息5</h2>
                        <a class="btn btn-default edit" href="ZhaoPinDetail" type="button">查看</a>
                    </div>
                </div>
                <div class="col-md-12 column">
                    <div class="detail deleteBorder">
                        <a type="button" class="btn edit" href="AddZhaoPin">新&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp增</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>