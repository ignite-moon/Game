package com.ssm.pojo;

import com.alibaba.excel.annotation.ExcelProperty;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class User {

    @ExcelProperty(value = "id",index = 0)
//    @NotNull(message = "")
    private int id;

    @ExcelProperty(value = "用户名",index = 1)
    @NotBlank(message = "姓名不能为空")
    @Length(min = 2,max = 5,message = "姓名长度需要在{min}和{max}之间")
    //@Pattern(regexp = "")
    private String name;

    @ExcelProperty(value = "密码",index = 2)
    @NotBlank(message = "密码不能为空")
    private String password;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public  String toString(){
        return "User{"+"id='" + id + '\'' +
                ", name='" + name +'\''+", password=" + password+
                '}';
    }

}
