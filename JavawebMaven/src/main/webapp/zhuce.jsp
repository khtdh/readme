<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function checkForm()
            {
            alert("表单已提交！");
            }
        </script>
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
                padding-top: 120px;
                padding-left: 500px;
                
            }
            h2
            {
                font-family: "微软雅黑";
            font-size: 40px;
                color:black;
            }
            #reg
            {
                color:blue;
            }
        </style>
    </head>
    <body>
        <form name="f1" action="CheckRrgist" method="post" onsubmit="checkForm()">
            <div>
                <h2>
                    注册
                </h2>
                <p>
                    用户名:<input type="text" name="loginName" placeholder="请输入您的用户名"/>
                </p>
                <p>
                    密&emsp;码:<input type="password" name="loginPwd" />
                </p>
                <p>
                    <input id=reg type="submit" value="立即注册" />
                </p>
                <p>
                    已有账号？<a href="denglu.jsp">请登录</a>
                </p>    
            </form>    
            </div>               
    </body>
</html>