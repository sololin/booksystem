package com.bjsxt.book.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import com.bjsxt.book.model.Book;
import com.bjsxt.book.model.User;
import com.bjsxt.book.model.userLogin;
import com.bjsxt.book.util.HibernateUtil;

public class UserService {
	
	public User login(userLogin uLogin)throws Exception{
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query=session.createQuery("from User as u where u.userName=:name and u.passWord=:password");
		query.setString("name", uLogin.getUserLoginName());
		query.setString("password", uLogin.getUserLoginPassWord());
		User resultStu=(User)query.uniqueResult();
		session.getTransaction().commit();
		return resultStu;
	}
	
	
	public void add(User u) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.merge(u);
		session.getTransaction().commit();
	}
	
	public User information(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Book b = (Book) session.get(Book.class, id);
		User user = b.getUser();
		session.getTransaction().commit();
		return user;
	}
		
		
	
	public List<User> list() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		StringBuffer hql = new StringBuffer("from user");
		Query query = session.createQuery(hql.toString());
		List<User> users = query.list();
		session.getTransaction().commit();
		return users;
	}
		
	
	public void delete(User u) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.delete(u);
		session.getTransaction().commit();
	}

	
	public void update(User u) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(u);
		session.getTransaction().commit();
	}
	
	
	public User loadById(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User user = (User) session.get(User.class, id);
		session.getTransaction().commit();
		return user;
		
	}


	public boolean existUserWithUserName(String userName) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		String hql="select count(*) from User where userName=:username";
		Query query = session.createQuery(hql);
		query.setString("username", userName);
		int count=((Long)query.uniqueResult()).intValue();
		session.getTransaction().commit();
		if(count>0){
			return true;
		}else{
			return false;			
		}
		
	}

}
