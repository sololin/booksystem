package com.bjsxt.book.action;





import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.bjsxt.book.model.Book;
import com.bjsxt.book.model.Message;
import com.bjsxt.book.model.Search;
import com.bjsxt.book.model.User;
import com.bjsxt.book.model.userLogin;
import com.bjsxt.book.service.BookService;
import com.bjsxt.book.util.PageUtil;
import com.bjsxt.book.model.PageBean;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	public List<Book> books;
	public userLogin ul = new userLogin();
	
	private Search search;
	private Message message;
	
	private String page;
	private int total;
	private String pageCode;
	
	int id;	
	int category;
	private String findWord;
	private BookService bookService = new BookService();
	public Book book;
	public User user;
	private Book s_book;
	
	public String index() {
		return SUCCESS;
	}
	
	public String list() {
		User user1 = (User)session.get("currentUser");
		
		
		books = bookService.list(user1.getId());
		//book = books.get(0);
		//System.out.print("aaa");
		//System.out.print(book.getBookName());
		return SUCCESS;
	}
	
	public String categoryList() {
		if(category == 5) {
			findWord = search.getContend();
			System.out.println(findWord);
		}
		else findWord = "非空";
		//System.out.println(message.getConString());
		if(com.bjsxt.book.util.StringUtil.isEmpty(page)){
			page="1";
		}
		
		PageBean pageBean=new PageBean(Integer.parseInt(page),5);
		books = bookService.categoryList(category,findWord,pageBean);
		total = bookService.bookCount(category, findWord);
		pageCode=PageUtil.genPagination("admin/Book-categoryList", total, Integer.parseInt(page), 5);
		
		
		//System.out.print(book1.getBookName());
		//book = books.get(0);
		//System.out.print("aaa");
		//System.out.print(book.getBookName());
		return SUCCESS;
	}
	
	
	public String userInformation(){
		//userLogin uu = (userLogin)session.get("newUser");
		//String userNameString = uu.getUserLoginName();
		//user = bookService.userInformation(userNameString);
		User user1 = (User)session.get("currentUser");
		user = bookService.userInformation(user1.getUserName());
		System.out.println(user.getUserName());
		return SUCCESS;
	}
	
	public String add() {
		String school="";
		User u = (User)session.get("currentUser");
		school = u.getSchool();
		book.setUser(u);
		if(book.getDescription()==null || book.getDescription().trim().equals("")) {
			book.setDescription("good");
		}
		//school = bookService.getSchool((User)session.get("currentUser"));
		//System.out.print(category.getName());
		System.out.print(school);
		int categoryAdd = 1;
		if(school.equals("信息学部"))
			categoryAdd = 1;
		else if(school.equals("文理学部"))
			categoryAdd = 2;
		else if(school.equals("工学部"))
			categoryAdd = 3;
		else categoryAdd = 4;
		book.setCategory(categoryAdd);
		//java.util.Date date=new java.util.Date();
		//SimpleDateFormat myformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		//myformat.format(date);
		//System.out.print(myformat.format(date));
		//book.setCreateDate();
		bookService.add(book);
		return SUCCESS;
	}
	
	public String delete() {
		bookService.deleteById(id);
		return SUCCESS;
	}
	
	public String addInput() {
		return "input";
	}
	
	public String update() {
		bookService.update(book);
		return SUCCESS;
	}
	
	public String updateInput() {
		System.out.print(id);
		this.book = this.bookService.loadById(id);
		
		return INPUT;
	}


	public List<Book> getBooks() {
		return books;
	}


	public void setBooks(List<Book> books) {
		this.books = books;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public BookService getBookService() {
		return bookService;
	}


	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}


	public Book getBook() {
		return book;
	}


	public void setBook(Book book) {
		this.book = book;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public Search getSearch() {
		return search;
	}

	public void setSearch(Search search) {
		this.search = search;
	}

	public userLogin getUl() {
		return ul;
	}


	
	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public void setUl(userLogin ul) {
		this.ul = ul;
	}

	public User getUser() {
		return user;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getFindWord() {
		return findWord;
	}
	public void setFindWord(String findWord) {
		this.findWord = findWord;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getPageCode() {
		return pageCode;
	}

	public void setPageCode(String pageCode) {
		this.pageCode = pageCode;
	}

	public Book getS_book() {
		return s_book;
	}

	public void setS_book(Book s_book) {
		this.s_book = s_book;
	}

	

}
