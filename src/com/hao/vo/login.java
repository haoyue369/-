package com.hao.vo;

public class login {
    private String username;
    private String pwd;

    public login() {
    }

    public String getUsername() {
        return username;
    }

    @Override
    public String toString() {
        return "login{" +
                "username='" + username + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public login(String username, String pwd) {
        this.username = username;
        this.pwd = pwd;
    }
}
