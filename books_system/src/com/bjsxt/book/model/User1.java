package com.bjsxt.book.model;

import java.io.Serializable;

public class User1 implements Serializable{
	private String loginName;  
    private String password;  
      
    public String getLoginName() {  
        return loginName;  
    }  
  
    public void setLoginName(String loginName) {  
        this.loginName = loginName;  
    }  
  
    public String getPassword() {  
        return password;  
    }  
  
    public void setPassword(String password) {  
        this.password = password;  
    }  
}
