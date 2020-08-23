package com.aiit.model;

public class Login {
    private String LoginName;
    private String LoginPwd;
    private String email;
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getLoginName() {
        return LoginName;
    }
    public void setLoginName(String loginName) {
        LoginName = loginName;
    }
    public String getLoginPwd() {
        return LoginPwd;
    }
    public void setLoginPwd(String loginPwd) {
        LoginPwd = loginPwd;
    }
    public Login(String loginName, String loginPwd) {
        super();
        LoginName = loginName;
        LoginPwd = loginPwd;
    }
    public Login(String loginName) {
        super();
        LoginName = loginName;
    }
    public Login() {
        super();
    }
    public Login(String loginName, String loginPwd, String email) {
        super();
        LoginName = loginName;
        LoginPwd = loginPwd;
        this.email = email;
    }
}

