<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

    <title>待审核工作</title>

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
        .btn {
            float: right;
        }

        .job {
            float: left;
            margin-left: 10px;
            color: #2b542c;
        }

        .edit {
            float: right;
            margin-top: 20px;
            margin-right: 30px;
        }

        .detail {
            border: 1px solid #ededed;
            margin: 5px 0 20px 0;
            min-height: 70px;
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
    </style>

</head>

<body>
<c:if test="${jobs==null}">
    <div class="col-md-12 column">
        <h1>暂时没有需要审核的工作</h1>
    </div>
</c:if>
<c:forEach items="${jobs}" var="item">
    <div class="col-md-12 column">
        <div class="detail">
            <h2 class="job">工作:${item.title}</h2>
            <a class="btn btn-default edit" href="JobDetail?jobId=${item.jobId}" type="button">查看</a>
        </div>
    </div>
</c:forEach>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>