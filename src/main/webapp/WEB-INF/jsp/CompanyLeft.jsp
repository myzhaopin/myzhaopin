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

        .list_item_bot .li_b_l span {
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            vertical-align: middle;
            font-size: 12px;
            padding: 0 5px;
        }

        .first{
            margin-top: 30px;
        }

        .left {
            border: 0px solid #dcdcdc;
            min-height: 450px;
        }

        .btn {
            margin-bottom: 15px;
            width: 195px;
        }

    </style>
</head>
<body>
<div class="left">
    <div><a href="CompanyDetail" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg first">企业信息</button>
    </a></div>
    <div><a href="ZhaoPin" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg">招聘信息</button>
    </a></div>
    <div><a href="EmployResumes" class="updateData" target="iframe_right">
        <button type="button" class="btn btn-primary btn-lg">查看求职信息</button>
    </a></div>

    <div><a href="Left" class="loginOut" target="_parent"><button type="button" class="btn btn-primary btn-lg">退出</button></a></div>
</div>
</body>
</html>

