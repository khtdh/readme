<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'regist.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            type="text/javascript"></script>
    <style type="text/css">
        #main {
            position: fixed;
            width: 400px;
            height: 300px;
            top: 70%;
            left: 60%;
            margin-top: -300px;
            margin-left: -200px;
        }

        td {
            padding: 5px;
        }

        input {
            width: 100%;
            height: 30px;
        }
    </style>

    <script type="text/javascript">
        function doSubmit1(){
            var registerName = document.getElementById("registerName").value;
            var psw = document.getElementById("psw").value;
            if(registerName==""){
                alert("用户名不能为空");
                document.getElementById("registerName").focus();
                return false;
            }
            if(registerName!=""&&psw==""){
                alert("密码名不能为空");
                document.getElementById("psw").focus();
                return false;
            }
            else{
                return true;
            }
        }
    </script>

</head>

<body
        style="background: url(pic/login10.png);background-size:cover;font-family: 微软雅黑;">

<div id="main">

    <form action="RegistServlet" method="post" onsubmit="return doSubmit1()">
        <table >
            <tr>
                <td><center>
                    <h3>注册</h3>
                </center></td>
            </tr>
            <tr>
                <td><input type="text" name="registerName" id="registerName"
                           placeholder="设置您的用户名"> <span id="tishi1"></span></td>
            </tr>
            <tr>
                <td><input type="password" name="psw" id="psw" placeholder="设置您的密码"></td>

            </tr>
            <tr>
                <td><input type="password" name="rpsw" placeholder="请确认您的密码"></td>
                <td><font color="red" size="2"> ${MSG1}</font></td>
            </tr>
            <tr>
                <td><input type="text" name="email" id="email"  placeholder="请确认您的邮箱"></td>
            </tr>
            <tr>
                <td><input type="submit" value="注册"></td>
                <td><font color="red" size="2"> ${MSG2}</font></td>
            </tr>
        </table>
    </form>
    <a href="login.jsp" style="margin-left: 70px;"><font size="2"><i>返回登录</i>
    </font> </a>
</div>
</body>
</html>

