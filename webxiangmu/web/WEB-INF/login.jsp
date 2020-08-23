<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'login.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->
    <script type="text/javascript">
        function doSubmit(){
            var myLoginName = document.getElementById("loginName").value;
            if(myLoginName==""){
                alert("用户名不能为空");
                document.getElementById("loginName").focus();
                return false;
            }
            else{
                return true;
            }
        }
    </script>
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

</head>

<body
        style="background: url(pic/login10.png);background-size:cover;font-family: 微软雅黑;">
<!-- 页面的Form表单 用来和后端建立交互的关键点 -->
<div id="main">
    <form name="f1" id="f1" action="toCheckLogin" method="post"
          onsubmit="return doSubmit();">
        <table border="0">
            <tr>
                <td colspan="1"><center>
                    <h3>用户登录</h3>
                </center>
                </td>
            </tr>
            <tr>
                <td><input type="text" name="loginName" id="loginName" placeholder="请输入您的用户名">
                </td>
                <td colspan="1"><center>
                <td><font color="red" size="2"> ${MSG}</font></td>
                </center>
                </td>
            </tr>
            <tr>
                <td><input type="password" name="loginPwd" id="password" placeholder="请输入您的密码">
                </td>
            </tr>
            <tr>
                <td colspan="1" align="center"><input type="submit" value="登陆">
                </td>
            </tr>

        </table>
    </form>
    <a href="regist.jsp" style="margin-left: 40px;"><font size="2"><i>没有帐号？点击注册</i></font></a>
    <br>
</div>

</body>
</html>

