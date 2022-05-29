package com.ssm.service;

import com.ssm.dao.AdminMapper;
import com.ssm.pojo.Admin;
import com.ssm.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
@Repository("adminService")
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminMapper adminMapper;


    @Override
    public Admin login(String name,String password){
        Admin admin=adminMapper.login(name,password);
        if (admin!=null&&admin.getPassword().equals(password)){
            return admin;
        }
        return null;
    }

    @Override
    public int insert(Admin admin){
        return adminMapper.insert(admin);
    }
}
