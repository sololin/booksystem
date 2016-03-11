package com.bjsxt.book.action;

import java.util.List;

import org.apache.struts2.json.annotations.JSON;





import com.bjsxt.book.model.Message;
import com.bjsxt.book.service.MessageService;
import com.bjsxt.book.util.DateFormatUtil;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;

public class JsonAction extends ActionSupport {  
	  
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	 private JSONArray result;
     private Message message;
     
     private int count;
     private int startMessage = 0;
  
    @Override  
    public String execute() {
    	//System.out.print("111");
    	MessageService messageService = new MessageService();
    	count = messageService.messageCount();
    	List<Message> messages = null;
    	if(count<21) {
    		messages = messageService.show(startMessage);
    	}else {
    		startMessage = count - 20;
    		messages = messageService.show(startMessage);
    	}
        
       for(int i=0;i<messages.size();i++) {
        	messages.get(i).setStringDate(DateFormatUtil.formatDate(messages.get(i).getCreateDate()));
        }
        //System.out.print(message.getCreateDate());
        JSONArray config = new JSONArray();
        config = JSONArray.fromObject(messages);
        result = config;
        return SUCCESS;
  
    }

	
	
	@JSON(serialize=true)
	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}



	public JSONArray getResult() {
		return result;
	}



	public void setResult(JSONArray result) {
		this.result = result;
	}  
}  