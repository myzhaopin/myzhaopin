<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <style>
        body{
            overflow-y: hidden;
        }
        .left {
            border: 1px solid #dcdcdc;
            min-height: 450px;
        }
        .updateData, .MyData, .loginOut {
            font-size: 35px;
            line-height: 90px;
        }
    </style>
</head>
<body>
<div class="left">
    <div><a href="MyData" class="updateData" target="iframe_right">修改资料</a></div>
    <div><a href="MyResumes" class="MyData" target="iframe_right">我的简历</a></div>
    <div><a href="#" class="loginOut">退出</a></div>
</div>
</body>
</html>
