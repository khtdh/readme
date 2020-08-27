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
public class CheckRrgist extends HttpServlet {

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
        boolean	isHave=loginService.RegistNameAndPwd(myName, myPwd);
        //如果注册成功
        if(isHave){
            request.setAttribute("myName", myName);
            request.getRequestDispatcher("denglu.jsp").forward(request, response);
        }
        else{
            //如果注册失败，报告错误
            request.getSession().setAttribute("MSG", "注册失败");
            response.sendRedirect("zhuce.jsp");
        }
//        获取表单提交过来的信息

}
}

