<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
        form
        {
            width:100%;
            height:700px;
            margin-top: 0px;
            background:#008B8B;
        }
        div
        {
            display:inline-block;
            padding-top: 80px;
            padding-right: 20px;

        }
        h2
        {
            font-family: "微软雅黑";
            font-size: 40px;
            color:black;
        }
        #log
        {
            color:blue;
        }
    </style>
</head>
<body>
<form name="login" action="toCheckLogin" method="post">
        <div>
            <h2>
                thoutworks实验室欢迎您！
            </h2>
            <p>
                用户名:<input type="text" name="loginName" placeholder="请输入您的用户名"/>
            </p>
            <p>
                密&emsp;码:<input type="password" name="loginPwd"/>     <!--   注意：&emsp是全角空格符，占一个中文字的长度，加上可以保证用户名                                                                                         和密码对齐，小伙伴可以试着 先不加这个运行一下看一下结果  -->
            </p>
            <p>
                <input id=log type="submit" value="登录" />
            </p>
            <p>
                还没有账号？<a href="zhuce.jsp">立即注册</a>
            </p>
        </div>
</form>
</body>
</html>
