package com.bjsxt.book.service;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.bjsxt.book.model.Message;
import com.bjsxt.book.util.HibernateUtil;

public class MessageService {

	public void add(Message message) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(message);
		session.getTransaction().commit();
	}
	
	public int messageCount() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		Query query = session.createQuery("select count(*) from Message");
		int count=((Long)query.uniqueResult()).intValue();
		session.getTransaction().commit();
		session.close();
		return count;	
	}

	public List<Message> show(int startMessage) {
		//Configuration configuration=new Configuration().configure("hibernate.cfg.xml");
		//ServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
		//SessionFactory sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		//Session session = sessionFactory.openSession();
		Session session1 =  HibernateUtil.getSessionFactory().openSession();
		session1.beginTransaction();
		Query query = session1.createQuery("from Message");
		//Query query = session.createQuery("from Message as m order by m.createDate asc");
		if(startMessage != 0) {
			query.setFirstResult(startMessage);
			query.setMaxResults(20);
		}
		List<Message> messages = query.list();
		session1.getTransaction().commit();
		session1.close();
		return messages;
	}



}
