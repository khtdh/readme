package com.aiit.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.aiit.common.JDBCUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class LoginDaoImp  {

    //登录时，进行数据库判断，账号和密码是否正确
    public boolean searchNameAndPwd(String loginName, String loginPwd) {
        //连接数据库
        Connection conn = (Connection) JDBCUtils.getConnection();
        String sql="SELECT name,password FROM yh WHERE loginName=? AND loginPwd=?";
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
    //注册，在数据库中插入账号和密码
    public boolean RegistNameAndPwd(String loginName, String loginPwd) {
        // TODO Auto-generated method stub
        Connection conn = (Connection) JDBCUtils.getConnection();
        String sql="insert into yh(name,password) values(?,?,?)";
        try {
            PreparedStatement pre=(PreparedStatement) conn.prepareStatement(sql);
            pre.setString(1, loginName);
            pre.setString(2, loginPwd);
            pre.executeUpdate();
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }

    public boolean RegistNameAndPwd2(String name, String xuehao, String xueyuan, String zhuanye, String nianji, String dianhua, String qq) {
        // TODO Auto-generated method stub
        Connection conn = (Connection) JDBCUtils.getConnection();
        String sql="insert into xx(name,xuehao,xueyuan,zhuanye,nianji,dianhua,qq) values(?,?,?)";
        try {
            PreparedStatement pre=(PreparedStatement) conn.prepareStatement(sql);
            pre.setString(1, name);
            pre.setString(2, xuehao);
            pre.setString(3, xueyuan);
            pre.setString(4, zhuanye);
            pre.setString(5, nianji);
            pre.setString(6, dianhua);
            pre.setString(7, qq);
            pre.executeUpdate();
            return true;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
}




