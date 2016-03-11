package com.bjsxt.book.service;




import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;




import com.bjsxt.book.model.Book;
import com.bjsxt.book.model.PageBean;
import com.bjsxt.book.model.User;
import com.bjsxt.book.util.HibernateUtil;

public class BookService {
	
	public void add(Book c) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
	}
		
		
	
	
	
	public String getSchool(User user) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		String hql = "select u.school from User as u where u.userName = " + user.getUserName();
		Query query = session.createQuery(hql);
		String school = (String) query.uniqueResult();
		session.getTransaction().commit();
		return school;
	}
	
	public List<Book> list(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User user1 = (User) session.get(User.class, id);
		List<Book> books = user1.getBooks();
		//StringBuffer hql = new StringBuffer("from Book as b where b.userId = :id");
		//Query query = session.createQuery(hql.toString());
		//query.setInteger("id", user.getId());
		//List<Book> books = query.list();
		session.getTransaction().commit();
		return books;
	}
	
	public List<Book> categoryList(int category, String findWord,PageBean pageBean) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		String sql = "";
		if(category == 1)
			sql = "from Book as b where b.category = 1 order by createDate DESC";
		else if (category == 2)
			sql = "from Book as b where b.category = 2 order by createDate DESC";
		else if (category == 3)
			sql = "from Book as b where b.category = 3 order by createDate DESC";
		else if (category == 4)
			sql = "from Book as b where b.category = 4 order by createDate DESC";
		else if (category == 5)
			sql = "from Book as b where b.bookName like '%" + findWord + "%'";
		else
			sql = "from Book order by createDate DESC";
		Query query = session.createQuery(sql);
		if(pageBean!=null){
			query.setFirstResult(pageBean.getStart());
			query.setMaxResults(pageBean.getPageSize());
		}
		List<Book> books = query.list();
		//System.out.print(books.size());
		//Book book = books.get(0);
		//System.out.print(book.getBookName());
		session.getTransaction().commit();
		session.close();
		return books;
	}
		
	public int bookCount(int category, String findWord) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		String sql = "";
		if(category == 1)
			sql = "select count(*) from Book as b where b.category = 1 order by createDate DESC";
		else if (category == 2)
			sql = "select count(*) from Book as b where b.category = 2 order by createDate DESC";
		else if (category == 3)
			sql = "select count(*) from Book as b where b.category = 3 order by createDate DESC";
		else if (category == 4)
			sql = "select count(*) from Book as b where b.category = 4 order by createDate DESC";
		else if (category == 5)
			sql = "select count(*) from Book as b where b.bookName like '%" + findWord + "%'";
		else
			sql = "select count(*) from Book order by createDate DESC";
		Query query = session.createQuery(sql);
		//List<Book> books = query.list();
		int count=((Long)query.uniqueResult()).intValue();
		session.getTransaction().commit();
		return count;
	}
	
	public User userInformation(String userName){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query query = session.createQuery("from User as u where u.userName = :userName");
		query.setString("userName", userName);
		User user = (User) query.uniqueResult();
		session.getTransaction().commit();
		return user;
	}
		
	
	public void delete(Book b) {
		deleteById(b.getId());
	}
	
	
	public void deleteById(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Book book = (Book) session.get(Book.class, id);
		session.delete(book);
		session.getTransaction().commit();
	}
		
	
	public void update(Book b) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		String hqlString = "update Book as b set b.bookName = :bookName,b.authod = :authod,b.edition = :edition,b.price=:price,b.description=:description where b.id=:id";
		Query query = session.createQuery(hqlString);
		query.setString("bookName", b.getBookName());
		query.setString("authod", b.getAuthod());
		query.setString("edition", b.getEdition());
		query.setInteger("price", b.getPrice());
		query.setString("description", b.getDescription());
		query.setInteger("id", b.getId());
		query.executeUpdate();
		session.getTransaction().commit();
	}
		
	
	
	public Book loadById(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
	    Book book = (Book)session.get(Book.class, id);
	    return book;
	}
	
}
