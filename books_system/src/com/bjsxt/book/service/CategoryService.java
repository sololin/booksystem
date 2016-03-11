package com.bjsxt.book.service;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.bjsxt.book.model.Book;
import com.bjsxt.book.model.Category;
import com.bjsxt.book.model.PageBean;
import com.bjsxt.book.model.User;
import com.bjsxt.book.util.HibernateUtil;



public class CategoryService {
	
	 public static String formatDate(Date date){  
		    return new SimpleDateFormat("yyyy-MM-dd").format(date);  
	 }  

	
	public void add(Category c, User user) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		if(user!=null)  c.setUser(user);
		session.save(c);
		session.getTransaction().commit();
	}
		
	
	
	public List<Category> list(PageBean pageBean,int order) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query;
		if(order == 2) {
			query = session.createQuery("from Category where uid = 0 order by hit desc,reply");
		}else {
			query = session.createQuery("from Category where uid = 0 order by createDate desc");
		}
		
		if(pageBean!=null){
			query.setFirstResult(pageBean.getStart());
			query.setMaxResults(pageBean.getPageSize());
		}
		List<Category> categories = query.list();
		session.getTransaction().commit();
		return categories;
	}
		
	public int categoryCount() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query;
		
			query = session.createQuery("select count(*) from Category where uid = 0");
		
		int count=((Long)query.uniqueResult()).intValue();
		session.getTransaction().commit();
		return count;
	}
	
	public void hit(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Category category = (Category) session.get(Category.class, id);
		int hit = category.getHit() + 1;
		category.setHit(hit);
		session.update(category);
		session.getTransaction().commit();
	}

	
	public void replyNum(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Category category = (Category) session.get(Category.class, id);
		int replyNum = category.getReply() + 1;
		category.setReply(replyNum);
		session.update(category);
		session.getTransaction().commit();
	}
	
	
	public Category getTopic(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Category category = (Category) session.get(Category.class, id);
		session.getTransaction().commit();
		return category;
	}
	
	public List<Category> listSubCategory(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query = session.createQuery("from Category as c where c.uid = :uid");
		query.setInteger("uid", id);
		List<Category> categories = query.list();
		session.getTransaction().commit();
		return categories;
	}
		
	public int listSubCategoryCount(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query = session.createQuery("select count(*) from Category where uid = :id");
		query.setInteger("id", id);
		int count=((Long)query.uniqueResult()).intValue();
		session.getTransaction().commit();
		return count;
	}
}
