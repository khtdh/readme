package com.aiit.service;


import com.aiit.dao.LoginDaoImp;
import com.aiit.model.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("CheckRrgist")
public class CheckRrgist2 extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //获取表单传过来的数据
        String name = request.getParameter("name");
        String xuehao = request.getParameter("xuehao");
        String xueyuan = request.getParameter("xueyuan");
        String zhuanye = request.getParameter("zhuanye");
        String banji = request.getParameter("class");
        String dianhua = request.getParameter("telephone");
        String qq = request.getParameter("qq");
        //把获取到的数据传到数据库，进行判断
        LoginDaoImp loginService = new LoginDaoImp();
        boolean	isHave=loginService.RegistNameAndPwd2(name,xuehao,xueyuan,zhuanye,banji,dianhua,qq);
        //如果成功
        if(isHave){
            request.getRequestDispatcher("./zhuejiemian.jsp").forward(request, response);
        }
        else{
            //如果失败，报告错误
            request.getSession().setAttribute("MSG", "注册失败");
            response.sendRedirect("./baoming.jsp");
        }
//        获取表单提交过来的信息

    }
}

