package com.aiit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.aiit.common.JDBCUtils;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class LoginDaoImp  {

    //登录时，进行数据库判断，账号和密码是否正确
    public boolean searchNameAndPwd(String loginName, String loginPwd) {
        //连接数据库
        Connection conn = (Connection) JDBCUtils.getConnection();
        String sql="SELECT loginName,loginPwd FROM tbl_login WHERE loginName=? AND loginPwd=?";
        try {
            PreparedStatement pre=(PreparedStatement) conn.prepareStatement(sql);
            pre.setString(1, loginName);
            pre.setString(2, loginPwd);
            ResultSet rs=pre.executeQuery();
            while(rs.next()){
                return true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
    //注册，在数据库中插入账号和密码、邮箱
    public void RegistNameAndPwd(String loginName, String loginPwd,String email) {
        // TODO Auto-generated method stub
        Connection conn = (Connection) JDBCUtils.getConnection();
        String sql="insert into tbl_login(loginName,loginPwd,loginEmail) values(?,?,?)";
        try {
            PreparedStatement pre=(PreparedStatement) conn.prepareStatement(sql);
            pre.setString(1, loginName);
            pre.setString(2, loginPwd);
            pre.setString(3, email);
            pre.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}

