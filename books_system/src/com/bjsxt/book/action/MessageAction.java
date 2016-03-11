package com.bjsxt.book.action;

import java.util.List;
import java.util.Map;





import org.apache.struts2.interceptor.SessionAware;

import com.bjsxt.book.model.Message;
import com.bjsxt.book.model.User;
import com.bjsxt.book.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private Message message;
	private List<Message> messages;
	private int statue;
	

	MessageService messageService = new MessageService();

	
	public String add() {
		
		User user1 = (User)session.get("currentUser");
		if(user1 != null && statue == 1) {
			//message.setUser(user1);
			message.setUserName(user1.getUserName());
			messageService.add(message);
		//	messages = messageService.show();
		//	session.put("sm", messages);
		}
		if(user1 == null && statue == 1) {
			message.setUserName("сн©м");
			messageService.add(message);
		}
		//if(statue == 2) {
		//	messages = messageService.show();
		//	session.put("sm", messages);
		//}
		return null;
	}
	
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
	
	public int getStatue() {
		return statue;
	}

	public void setStatue(int statue) {
		this.statue = statue;
	}
}
