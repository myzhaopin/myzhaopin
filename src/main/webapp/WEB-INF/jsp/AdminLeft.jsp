<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            overflow-y: hidden;
        }

        .left {
            border: 0px solid #dcdcdc;
            min-height: 450px;
        }

        .first{
            margin-top: 10px;
        }
        .btn {
            margin-bottom: 15px;
            width: 195px;
        }
    </style>
</head>
<body>
<div class="left">
    <div><a href="News" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg first">查看新闻</button>
    </a></div>
    <div><a href="AddNews" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg">发布新闻</button>
    </a></div>
    <div><a href="JobNotVerify" class="updateData" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg">审核工作</button>
    </a></div>
    <div><a href="JobVerified" class="updateData" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg">已审核工作</button>
    </a></div>
    <div><a href="Left" class="loginOut" target="_parent"><button type="button" class="btn btn-primary btn-lg">退出</button></a></div>
</div>
</body>
</html>
