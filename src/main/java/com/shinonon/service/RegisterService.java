package com.shinonon.service;

import com.shinonon.bean.User;
import com.shinonon.dao.LoginDao;
import com.shinonon.dao.RegisterDao;

import java.sql.SQLException;

public class RegisterService {
    private RegisterDao registerDao=new RegisterDao();
    LoginDao loginDao = new LoginDao();

    public String  register(User register) throws SQLException {
        String result=String.valueOf(registerDao.register(register));

        if (result.equals("0")){
            return "注册失败";
        }else {
            return "注册成功";
        }
    }

}
