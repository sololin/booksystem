package com.bjsxt.book.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.bjsxt.book.model.User;
import com.bjsxt.book.model.userLogin;

import com.bjsxt.book.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware{
	
	private Map<String, Object> session;
	int id;
	String errorString;
	public User u = new User();
	private userLogin userLogin;
	private String userName;
	
	public UserService userService = new UserService();
	
	public List<User> users = new ArrayList<User>();
	
	public String existUserWithUserName()throws Exception{
		System.out.println("12345678");
		System.out.println(userName);
		boolean exist=userService.existUserWithUserName(userName);
		System.out.println(exist);
		JSONObject result=new JSONObject();
		if(exist){
			result.put("exist", true);
		}else{
			result.put("exist", false);
		}
		com.bjsxt.book.util.ResponseUtil.write(ServletActionContext.getResponse(), result);
		return null;
	}
	
	public String add() {
		userService.add(u);
		return SUCCESS;
	}
	
	public String information() {
		u = userService.information(id);
		return SUCCESS;
	}
	
	public String addInput() {
		return "input";
	}
	
	public String update(){
		userService.update(u);
		return SUCCESS;
	}

	public String updateInput() {
		System.out.print("sss"+id);
		this.u = userService.loadById(id);
		return "input";
	}
	
	public String list() {
		users = userService.list();
		return SUCCESS;
	}
	
	public String delete() {
		
		return SUCCESS;
	}
	
	public String aftLogin() {
		User user = null;
		try {
			user = userService.login(userLogin);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(user==null){
			errorString = "×¼¿¼Ö¤ºÅ»òÃÜÂë´íÎó";
			return "error";
		}else{
			session.put("currentUser", user);
			return "login";
		}
	}
	
	public String login() {
		return SUCCESS;
	}
	

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public userLogin getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(userLogin userLogin) {
		this.userLogin = userLogin;
	}

	public String getErrorString() {
		return errorString;
	}

	public void setErrorString(String errorString) {
		this.errorString = errorString;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	
}
