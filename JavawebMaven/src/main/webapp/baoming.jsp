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
        <form name="log" action="CheckRrgist2" method="post">
            <div>
                <h2>
                    thoutworks实验室欢迎您！
                </h2>
                <p>
                    性名:<input type="text" name="name" placeholder="请输入您的姓名"/>
                </p>
                <p>
                    学号:<input type="text" name="xuehao" placeholder="请输入您的学号"/>
                </p>
                <p>
                    学院:<input type="text" name="xueyuan" placeholder="请输入您的学院"/>
                </p>
                <p>
                    专业:<input type="text" name="zhuanye" placeholder="请输入您的专业"/>
                </p>
                <p>
                    年级:<input type="text" name="class" placeholder="请输入您的年纪"/>
                </p>
                <p>
                    电话:<input type="text" name="telephone" placeholder="请输入您的电话"/>
                </p>
                <p>
                    QQ:<input type="text" name="qq" placeholder="请输入您的QQ"/>
                </p>
                <p>
                    <input id=log type="submit" value="提交" />
                </p>
            </div>
        </form>
    </body>
</html>