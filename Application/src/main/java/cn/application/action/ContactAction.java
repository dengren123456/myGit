package cn.application.action;

import cn.application.entity.Contact;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ContactAction extends BaseAction<Contact> {
	private static final long serialVersionUID = 1L;
	
	private String fullName;
	private String email;
	private String contactPhoneNumber;
	private String subject;
	private String detail;
	private JSONObject jsonObject=new JSONObject();
	private JSONArray jsonArray=new JSONArray();
	
	public String contact(){
		jsonObject.put("status", "ok");
		try{
			Contact contact = new Contact();
			contact.setFullName(fullName);
			contact.setEmail(email);
			contact.setContactPhoneNumber(contactPhoneNumber);
			contact.setSubject(subject);
			contact.setDetail(detail);
			contactService.save(contact);
		}catch(Exception e){
			jsonObject.put("status", "nook");
		}
		return "jsonObject";
	}
	
	
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactPhoneNumber() {
		return contactPhoneNumber;
	}
	public void setContactPhoneNumber(String contactPhoneNumber) {
		this.contactPhoneNumber = contactPhoneNumber;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public JSONObject getJsonObject() {
		return jsonObject;
	}
	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}
	public JSONArray getJsonArray() {
		return jsonArray;
	}
	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}

	
}
