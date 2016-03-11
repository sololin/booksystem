package com.bjsxt.book.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.bjsxt.book.model.Category;
import com.bjsxt.book.model.PageBean;
import com.bjsxt.book.model.User;
import com.bjsxt.book.service.CategoryService;
import com.bjsxt.book.util.PageUtil;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport implements SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3016044239042809243L;
	
	private Map<String, Object> session;
	private List<Category> categories;
	Category category = new Category();
	CategoryService categoryService = new CategoryService();
	int id;
	int hitorno;
	
	private int order;
	
	private String page;
	private int total;
	private String pageCode;
	
	
	public String add() {
		User user = (User) session.get("currentUser");
		//if(user != null) {
			if(id==0) {
				categoryService.add(category,user);
			}else {
				category.setUid(id);
				categoryService.add(category,user);
				categoryService.replyNum(id);
			}	
		//}
		
		return SUCCESS;
	}
	
	public String addNewInput() {
		return INPUT;
	}
	
	public String list() {
		if(com.bjsxt.book.util.StringUtil.isEmpty(page)){
			page="1";
		}
		if(order == 0) {
			order = (Integer) session.get("order");
		}else{
			session.put("order", order);
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page),5);
		categories = categoryService.list(pageBean,order);
		total = categoryService.categoryCount();
		pageCode=PageUtil.genPagination("category/Category-list", total, Integer.parseInt(page), 5);
		return SUCCESS;
	}
	
	
	public String replyInput() {
		//System.out.print(id);
		return INPUT;
	}
	
	
	public String listSubCategory() {
		if(hitorno == 1) categoryService.hit(id);
		category = categoryService.getTopic(id);
		//PageBean pageBean=new PageBean(Integer.parseInt(page),5);
		//categories = categoryService.listSubCategory(id,pageBean);
		categories = categoryService.listSubCategory(id);
		//total = categoryService.listSubCategoryCount(id);
		//pageCode=PageUtil.genPagination("category/Category-listSubCategory", total, Integer.parseInt(page), 5);
		return SUCCESS;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public CategoryService getCategoryService() {
		return categoryService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHitorno() {
		return hitorno;
	}

	public void setHitorno(int hitorno) {
		this.hitorno = hitorno;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
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

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

}
