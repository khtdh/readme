package com.aiit.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aiit.dao.LoginDaoImp;
import com.aiit.model.Login;


@WebServlet("toCheckLogin")
public class toCheckLogin extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //获取表单传过来的数据
        String myName = request.getParameter("loginName");
        String myPwd = request.getParameter("loginPwd");
        //把获取到的数据传到数据库，进行判断
        LoginDaoImp loginService = new LoginDaoImp();
        boolean	isHave=loginService.searchNameAndPwd(myName, myPwd);
        //如果账号密码正确，登录成功
        if(isHave){
            request.setAttribute("myName", myName);
            request.getRequestDispatcher("./zhuejiemian.jsp").forward(request, response);
        }
        else{
            //如果失败，报告错误
            request.getSession().setAttribute("MSG", "账号或密码错误");
            response.sendRedirect("./denglu.jsp");
        }

    }


}

