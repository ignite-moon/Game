package com.ssm.service;

import com.ssm.pojo.Admin;
import com.ssm.pojo.User;

public interface AdminService {

    public Admin login(String name, String password);

    public int insert(Admin admin);

}
