<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <style>
        body {
            overflow-y: hidden;
            overflow-x: hidden;
        }

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

        .left {
            margin-top: 70px;
            margin-bottom: 10px;
        }

        footer {
            text-align: center;
        }

    </style>
</head>
<body>
<div class="left">
    <div><a href="CompanyDetail" class="CompanyData" target="iframe_right">企业信息</a></div>
    <div><a href="ZhaoPin" class="jobData" target="iframe_right">招聘信息</a></div>
    <div><a href="EmployResumes" class="checkZhaopin" target="iframe_right">查看求职信息</a></div>
    <div><a href="#" class="loginOut">退出</a></div>
</div>
</body>
</html>

